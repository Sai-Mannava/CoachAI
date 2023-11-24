import UIKit

class CoachViewController: UIViewController, UITextViewDelegate {

   
    
    @IBOutlet weak var inputLabel: UITextField!
    
    @IBOutlet weak var responseLabel: UITextView!
    
    
    @IBAction func askCoach(_ sender: UIButton) {
        // Call OpenAI service to get the response
        var prompt = "Break down today's workout concisely:  2x[6x(200+400)] and what pace should I go as my current mile time is \(mileText.text!)"
        fetchOpenAIResponse(prompt: prompt)
    }
    
    @IBOutlet weak var mileText: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Prompt question: I want to 400s what pace should I go?
        // Assign UITextView delegate if needed
        responseLabel.delegate = self

        
        
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
