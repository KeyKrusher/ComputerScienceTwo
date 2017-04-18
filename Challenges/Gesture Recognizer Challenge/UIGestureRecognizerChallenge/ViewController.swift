//
//  ViewController.swift
//  UIGestureRecognizerChallenge
//
//  Created by Bryan Adams on 6/12/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    /***************************************************
    * Start Your Code Here For MVP
    ***************************************************/
    @IBAction func onViewMoved(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        
        myView.center = location
        
    }
    /***************************************************
    * End Your Code Here For MVP
    ***************************************************/


    
    /***************************************************
    * Start Your Code Here For Stretch #1
    ***************************************************/
    @IBAction func onViewPinched(_ sender: UIPinchGestureRecognizer) {
        //self.view.transform = self.view.transform.scaledBy(x: sender.scale, y: sender.scale)
//        sender.scale = sender.scale * 100
//        self.myView.transform = self.myView.transform.scaledBy(x: sender.scale, y: sender.scale)
//        
//        if sender.state == .changed {
//            let scale:CGFloat = sender.scale
//            let newScale:CGFloat = scale * 100
//            
//            // gesture.view.transform = CGAffineTransformScale(gesture.view.transform, scale, scale)
//            sender.view!.transform = sender.view!.transform.scaledBy(x: newScale, y: newScale)
        
        
        
        
        }
        
    }
    /***************************************************
    * End Your Code Here For Stretch #1
    ***************************************************/



    /***************************************************
    * Start Your Code Here For Stretch #2
    ***************************************************/
    func onViewTapped(_ sender: UITapGestureRecognizer) {
        if myView.backgroundColor == UIColor.blue {
            myView.backgroundColor = UIColor.red
        }
        else {
            myView.backgroundColor = UIColor.blue
        }
    }
    /***************************************************
    * End Your Code Here For Stretch #2
    ***************************************************/



    /***************************************************
    * Start Your Code Here For Stretch #3
    ***************************************************/
    func onViewSwipedRight(_ sender: UISwipeGestureRecognizer) {
        myView.alpha += 0.1
    }
    /***************************************************
    * End Your Code Here For Stretch #3
    ***************************************************/



    /***************************************************
     * Start Your Code Here For Stretch #4
     ***************************************************/
    func onViewSwipedLeft(_ sender: UISwipeGestureRecognizer) {
        myView.alpha -= 0.1
    }
    /***************************************************
     * End Your Code Here For Stretch #4
     ***************************************************/


