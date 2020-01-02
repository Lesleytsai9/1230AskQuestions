//
//  ViewController.swift
//  1130askQuestion
//
//  Created by 蔡家雯 on 2019/12/30.
//  Copyright © 2019 lesley tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViews: UIImageView!
    
    var imageNames = ["01","02","03","04","05"]
    
    var index = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    var qna = [questions]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let question1 = questions()
        question1.description = "六人行中的咖啡店叫什麼名字？"
        question1.answer = "Central Perk"
        qna.append(question1)
        let question2 = questions()
        question2.description = "六人在咖啡店中固定座沙發是什麼顏色？"
        question2.answer = "橘色"
        qna.append(question2)
        let question3 = questions()
        question3.description = "劇中角色  Chandler 和 Joey 的寵物是？"
        question3.answer = "雞與鴨"
        qna.append(question3)
        let question4 = questions()
        question4.description = "劇中角色 Phoebe 擅長的樂器是?"
        question4.answer = "吉他"
        qna.append(question4)
        let question5 = questions()
        question5.description = "劇中角色 Rachel 初登場的打扮是？"
        question5.answer = "婚紗"
        qna.append(question5)
        
        qna.shuffle()
        questionLabel.text = qna[index].description
    }

    @IBAction func showAnswerBtn(_ sender: UIButton) {
        answerLabel.text = qna[index].answer
        imageViews.isHidden = false
        
        if answerLabel.text == "橘色"{
            imageViews.image = UIImage(named: imageNames[0])
        }else if answerLabel.text == "Central Perk"{
            imageViews.image = UIImage(named: imageNames[1])
        }else if answerLabel.text == "雞與鴨"{
            imageViews.image = UIImage(named: imageNames[2])
        }else if answerLabel.text == "吉他"{
            imageViews.image = UIImage(named: imageNames[3])
        }else if answerLabel.text == "婚紗"{
            imageViews.image = UIImage(named: imageNames[4])
            }
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        index += 1
        if index == qna.count{
            index = 0
        }
        questionLabel.text = qna[index].description
        answerLabel.text = ""
        imageViews.isHidden = true
    }
}

