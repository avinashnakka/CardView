//
//  ViewController.swift
//  CardView
//
//  Created by Avinash Nakka on 5/14/19.
//  Copyright © 2019 Avinash Nakka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var ScoreCPU: UILabel!
    @IBOutlet weak var ScorePlayer: UILabel!
    @IBOutlet weak var FinishLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var CPUscore = 0
    var PlayerScore = 0
    
    @IBAction func dealButton(_ sender: Any) {
        
        let leftRandom = Int.random(in: 2...14)
        let rightRandom = Int.random(in: 2...14)
        leftImage.image = UIImage(named: "card\(leftRandom)")
        rightImage.image = UIImage(named: "card\(rightRandom)")
        
        if leftRandom > rightRandom{
            CPUscore+=1
            ScoreCPU.text = "\(CPUscore)"
            
        }
        else if leftRandom < rightRandom{
            PlayerScore+=1
            ScorePlayer.text = "\(PlayerScore)"
    
        }
        
    }
    
    @IBAction func FINISH(_ sender: Any) {
        
        if CPUscore > PlayerScore{
            FinishLabel.text = "CPU WINS"
        }
        else if PlayerScore > CPUscore{
            FinishLabel.text = "PLAYER WINS"
        }
        else{
            FinishLabel.text = "TIE"
        }
        
    }
    
    @IBAction func NewGame(_ sender: Any) {
            FinishLabel.text = ""
            CPUscore = 0
            PlayerScore = 0
            ScoreCPU.text = "\(CPUscore)"
            ScorePlayer.text = "\(PlayerScore)"
        
    }
    
    

}

