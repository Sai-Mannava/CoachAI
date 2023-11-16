import UIKit

class CoachViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var inputLabel: UITextField!
    
    @IBOutlet weak var responseLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Prompt question: I want to 400s what pace should I go?
        let prompt = "Break down today's workout:  2x[6x(200+400)]"

        // Assign UITextView delegate if needed
        responseLabel.delegate = self

        // Call OpenAI service to get the response
        fetchOpenAIResponse(prompt: prompt)
    }

    private func fetchOpenAIResponse(prompt: String) {
        ChatGPTClient().makeChatRequest(prompt: prompt) { [weak self] (response, error) in
            if let response = response {
                DispatchQueue.main.async {
                    // Update UI on the main thread
                    self?.responseLabel.text = response
                    print("✅ SUCCESS!!! OpenAI Response: \(response)")
                }
            } else if let error = error {
                print("🚨 Error from OpenAI service: \(error.localizedDescription)")
            }
        }
    }
}
