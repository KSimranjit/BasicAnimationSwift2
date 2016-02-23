//
//  ViewController.swift
//  Animations
//
//  Created by Simranjit Kaur on 23/02/2016.
//  Copyright © 2016 Simranjit Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet weak var animateButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func animateImage(sender: AnyObject) {
        
        if isAnimating {
           //Animation Starts
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            animateButton.setTitle("Stop", forState: UIControlState.Normal)
            isAnimating = false
            
        }
        else{
           //Animation Stops
            timer.invalidate()
            animateButton.setTitle("Animate", forState: UIControlState.Normal)
            isAnimating = true
        }
    
    
    }
   
    
    func doAnimation(){
        if counter == 5 {
            counter = 1
        }
        else{
            counter++
        }
        //Loading imageView
        imageView.image = UIImage(named: "whitebird_frame\(counter).png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

