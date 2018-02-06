//
//  ViewController.swift
//  Magic 8 Balls
//
//  Created by Louis Nicolas Leuillet on 06/02/2018.
//  Copyright © 2018 Louis Nicolas Leuillet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // VARIABLE
    var randomBallGenerated : Int = 0
    var ballsArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    // OUR IMAGE VIEW
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        changeBallView()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBallView()
    }
    
    // TO CHANGE THE BALL VIEW
    func changeBallView() {
        
        randomBallGenerated = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballsArray[randomBallGenerated])
        
    }
    
}

