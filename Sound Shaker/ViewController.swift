//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Patrick Landin on 12/20/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
     var player : AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var fileLocation = NSString(string:NSBundle.mainBundle().pathForResource("Funny Sounds/Pew", ofType: "mp3")!)
        
        var error : NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
        
        player.play()
        
        

//        Demo code for swiping
        
//        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
//        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
//        self.view.addGestureRecognizer(swipeRight)
//
//        var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
//        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
//        self.view.addGestureRecognizer(swipeUp)
        
    
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        if event.subtype == UIEventSubtype.MotionShake {
            
            println("User made the shakies")
            
        }
        
    }
    
    
//    func swiped(gesture: UIGestureRecognizer) {
//        
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            
//            switch swipeGesture.direction {
//                
//            case UISwipeGestureRecognizerDirection.Right:
//                println("User swiped right")
//                
//            case UISwipeGestureRecognizerDirection.Up:
//                println("User swiped up")
//                
//            default:
//                break
//                
//            }
//            
//        }
//        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

