//
//  ViewController.swift
//  WarCardGame
//
//  Created by Uditha Sampath on 2021-09-17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    var scoreLeft=0
    var scoreRight=0
    
    @IBAction func dealButton(_ sender: UIButton) {
        let rightNumber=Int.random(in: 2...14)
        let leftNumber=Int.random(in: 2...14)
        
        leftImageView.image=UIImage(named: "card\(leftNumber)")
        rightImageView.image=UIImage(named: "card\(rightNumber)")
        
        if leftNumber>rightNumber{
            scoreLeft=scoreLeft+1
        }else if leftNumber<rightNumber{
            scoreRight=scoreRight+1
        }else{
            //Tie
        }
        
        leftScoreLabel.text=String(scoreLeft)
        rightScoreLabel.text=String(scoreRight)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

