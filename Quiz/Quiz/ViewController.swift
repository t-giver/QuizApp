//
//  ViewController.swift
//  Quiz
//
//  Created by spark-05 on 2024/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quizViewcontroller =
            segue.destination as? QuizViewController {
            if let text = self.nameTextField.text {
                quizViewcontroller.nameText = text
            }
        }
    }
    
    
    @IBAction func pressButton(_ sender: Any) {

    }
}

