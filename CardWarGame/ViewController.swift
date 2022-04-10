//
//  ViewController.swift
//  CardWarGame
//
//  Created by Rekeningku on 09/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftSocre = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let (_,_) = randomCard()
    }
    
    func randomCard ()-> (Bool, Bool){
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        return (leftNumber > rightNumber , rightNumber > leftNumber)
        
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let (left,right) = randomCard()
        
        if left {
            leftSocre += 1
        } else if right{
            rightScore += 1
        }
        
        rightScoreLabel.text = "\(rightScore)"
        leftScoreLabel.text = "\(leftSocre)"
        
    }
    
}

