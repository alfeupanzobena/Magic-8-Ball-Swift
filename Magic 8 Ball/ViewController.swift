//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alfeu Panzo Bena on 09/12/2024.


import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var UIImageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
        
        let randomNumber = Int.random(in: 0..<ballArray.count)
        
        UIImageView.image = ballArray[randomNumber]
        
        UIImageView.alpha = 0.0
        
        UIView.animate(withDuration: 0.1) {
            
            self.UIImageView.alpha = 1.0
            
        }
        
    }
    
}

