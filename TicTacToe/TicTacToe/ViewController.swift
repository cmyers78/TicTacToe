//
//  ViewController.swift
//  TicTacToe
//
//  Created by Christopher Myers on 7/5/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonZero: UIButton!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var buttonFour: UIButton!
    
    @IBOutlet weak var buttonFive: UIButton!
    
    @IBOutlet weak var buttonSix: UIButton!
    
    @IBOutlet weak var buttonSeven: UIButton!
    
    @IBOutlet weak var buttonEight: UIButton!
    
    
    let xImage = UIImage(named: "x")
    let oImage = UIImage(named: "o")
    
    var valuesArray = ["x", "o", "x", "o", "x", "x", "x", "o", "x"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadImages()
        
        
        self.buttonZero.transform = CGAffineTransformMakeScale(0.1, 0.1)
        UIView.animateWithDuration(6.0,
                                   delay: 0.5,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 8.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.buttonZero.transform = CGAffineTransformIdentity
                                    }, completion: nil)
        
        self.buttonTwo.transform = CGAffineTransformMakeScale(0.1, 0.1)
        UIView.animateWithDuration(6.0,
                                   delay: 0.5,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 8.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.buttonTwo.transform = CGAffineTransformIdentity
                                    }, completion: nil)
        
        self.buttonFour.transform = CGAffineTransformMakeScale(0.1, 0.1)
        UIView.animateWithDuration(6.0,
                                   delay: 0.5,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 8.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.buttonFour.transform = CGAffineTransformIdentity
                                    }, completion: nil)
        
        self.buttonFive.transform = CGAffineTransformMakeScale(0.1, 0.1)
        UIView.animateWithDuration(6.0,
                                   delay: 0.5,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 8.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.buttonFive.transform = CGAffineTransformIdentity
                                    }, completion: nil)
        
        self.buttonSix.transform = CGAffineTransformMakeScale(0.1, 0.1)
        UIView.animateWithDuration(6.0,
                                   delay: 0.5,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 8.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.buttonSix.transform = CGAffineTransformIdentity
                                    }, completion: nil)
        
        self.buttonEight.transform = CGAffineTransformMakeScale(0.1, 0.1)
        UIView.animateWithDuration(6.0,
                                   delay: 0.5,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 8.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.buttonEight.transform = CGAffineTransformIdentity
                                    }, completion: nil)
    
        
//        self.buttonZero.setImage(xImage, forState: .Normal)
//        self.buttonOne.setImage(oImage, forState: .Normal)
//        self.buttonTwo.setImage(xImage, forState: .Normal)
//        self.buttonThree.setImage(oImage, forState: .Normal)
//        self.buttonFour.setImage(xImage, forState: .Normal)
//        self.buttonFive.setImage(xImage, forState: .Normal)
//        self.buttonSix.setImage(xImage, forState: .Normal)
//        self.buttonSeven.setImage(oImage, forState: .Normal)
//        self.buttonEight.setImage(xImage, forState: .Normal)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadImages() {
        for (index, values) in valuesArray.enumerate() {
            
            if values == "x" {
                if let button = self.view.viewWithTag(index) as? UIButton {
                    button.setImage(xImage, forState: .Normal)
                    print(index)
                }
            } else {
                if let button = self.view.viewWithTag(index) as? UIButton {
                    button.setImage(oImage, forState: .Normal)
                    print(index)
                }
            }
        }

    }

}

