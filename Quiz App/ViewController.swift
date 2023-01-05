//
//  ViewController.swift
//  Quiz App
//
//  Created by Apple on 05/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btn_false: UIButton!
    @IBOutlet weak var btn_true: UIButton!
    @IBOutlet weak var lbl_Question: UILabel!
    let quiz = [
        Question(q: "1. A slug's blood is green.", a: "True"),
        Question(q: "2. Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "3. The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "4. In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "5. In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "6. It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "7. You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "8. Google was originally called 'Backrub'.", a: "True"),
        Question(q: "9. Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "10. The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "11. No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "12. Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        btn_false.layer.cornerRadius = 20
        btn_true.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerTapped(_ sender: UIButton) {
        
        updateUI()
        let userAnser = sender.currentTitle // True or false
        let ActualAnswer = quiz[questionNumber].answer
        
        
        if userAnser == ActualAnswer {
            sender.backgroundColor = .green
            print("Right ")
        }
        else{
            print("false")
            sender.backgroundColor = .red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            //            btn_true.backgroundColor = .clear
            //            btn_false.backgroundColor = .clear
        } else {
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        }
    
    @objc func updateUI(){
        lbl_Question.text = quiz[questionNumber].text
        btn_false.backgroundColor = UIColor.darkGray
        btn_true.backgroundColor = UIColor.darkGray
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
      
        
    }
    
}





