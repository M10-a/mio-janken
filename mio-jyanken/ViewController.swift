//
//  ViewController.swift
//  mio-jyanken
//
//  Created by 浅野未央 on 2017/05/13.
//  Copyright © 2017年 mio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBOutlet weak var answerimageview: UIImageView!
  
  @IBOutlet weak var answerLabel: UILabel!
  
  
		var answerNumber:UInt32 = 0
  
  @IBAction func shuffleAction(_ sender: Any) {
    
    var  newAnswerNumber:UInt32 = 0
    
    repeat{

    
    //乱数
    newAnswerNumber = arc4random_uniform(3)
      
    } while answerNumber == newAnswerNumber
    
    answerNumber = newAnswerNumber
    
    if answerNumber == 0{
    
      answerLabel.text = "グー"
      answerimageview.image = UIImage(named:"gu")
    
    }else if answerNumber == 1 {
      answerLabel.text = "チョキ"
      answerimageview.image = UIImage(named:"choki")

    }else if answerNumber == 2 {
      answerLabel.text = "パー"
      answerimageview.image = UIImage(named:"pa")
}
//     answerNumber = answerNumber + 1
}
}
