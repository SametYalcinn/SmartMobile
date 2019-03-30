//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Student on 30/03/2019.
//  Copyright © 2019 Samet Yalcin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       newBallImage()
        
    }
    
    func newBallImage(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

