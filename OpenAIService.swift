//
//  OpenAIService.swift
//  UCDTFClub
//
//  Created by Sai Mannava on 11/14/23.
//

import Foundation

class ChatGPTClient {
    let apiKey = "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"
    let apiUrl = "https://api.openai.com/v1/chat/completions"
    
    func makeChatRequest(prompt: String, completionHandler: @escaping (String?, Error?) -> Void) {
        let url = URL(string: apiUrl)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let parameters: [String: Any] = [
            "model": "gpt-3.5-turbo",
            "messages": [
                ["role": "system", "content": "You are a helpful assistant."],
                ["role": "user", "content": prompt]
            ]
        ]


        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters)
        } catch {
            completionHandler(nil, error)
            return
        }

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completionHandler(nil, error)
                return
            }

            guard let data = data else {
                completionHandler(nil, NSError(domain: "Response Data Error", code: 0, userInfo: nil))
                return
            }

            // Print the raw JSON response for debugging
            if let jsonString = String(data: data, encoding: .utf8) {
                print("JSON Response: \(jsonString)")
            }

            do {
                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                if let choices = json?["choices"] as? [[String: Any]], let content = choices.first?["message"] as? [String: Any], let role = content["role"] as? String, role == "assistant", let text = content["content"] as? String {
                    completionHandler(text, nil)
                } else {
                    completionHandler(nil, NSError(domain: "Response Parsing Error", code: 0, userInfo: nil))
                }
            } catch {
                completionHandler(nil, error)
            }
        }

        task.resume()
    }

}
