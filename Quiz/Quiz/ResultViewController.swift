//
//  ResultViewController.swift
//  Quiz
//
//  Created by spark-05 on 2024/05/10.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    var nameText: String = ""
    var score: Int = 0
    let counts = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       result()
    }
    
    func result(){
        let totalCount = counts.quizzes.count
        var text = ""
        self.label.text = "\(self.nameText)さん　あなたのスコアは\(self.score)です"
        switch self.score {
        case 0...2:
            text = "動物に関してあまり興味はないでしょうか？\n\nもっと頑張りましょう！"
        case 3..<totalCount:
            text = "動物にはかなり詳しい方ですね！\n\nもう少しです！"
        case totalCount:
            text = "全問正解です！\n\nおめでとうございます！"
        default:
            break
        }
        self.textView.text = text
    }
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
}
