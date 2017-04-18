//
//  ViewController.swift
//  OperatorsChallenge
//
//  Created by Paul Giamatti on 6/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UITextFieldDelegate, SFSafariViewControllerDelegate
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    @IBOutlet weak var textField10: UITextField!
    @IBOutlet weak var textField11: UITextField!
    @IBOutlet weak var textField12: UITextField!
    
    @IBOutlet weak var equalToLabel: UILabel!
    @IBOutlet weak var notEqualToLabel: UILabel!
    @IBOutlet weak var greaterThanLabel: UILabel!
    @IBOutlet weak var lessThanLabel: UILabel!
    @IBOutlet weak var greaterThanOrEqualToLabel: UILabel!
    @IBOutlet weak var lessThanOrEqualToLabel: UILabel!
    
    @IBOutlet weak var numberOfTicketsTextField: UITextField!
    @IBOutlet weak var purchasedPackagesLabel: UILabel!
    @IBOutlet weak var individualTicketsLabel: UILabel!
    
    @IBOutlet weak var urlAddOnTextField: UITextField!
    
    var tickets = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil)
    }
    
    
    func keyboardWillShow(notification: NSNotification)
    {
        if numberOfTicketsTextField.editing || urlAddOnTextField.editing
        {
            self.view.frame.origin.y -= 200
        }
    }
    
    
    func keyboardWillHide(notification: NSNotification)
    {
        if self.view.frame.origin.y != 0
        {
            self.view.frame.origin.y += 200
        }
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func mvpButtonPressed(sender: UIButton)
    {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
        textField6.resignFirstResponder()
        textField7.resignFirstResponder()
        textField8.resignFirstResponder()
        textField9.resignFirstResponder()
        textField10.resignFirstResponder()
        textField11.resignFirstResponder()
        textField12.resignFirstResponder()
        let number1 = Int(textField1.text!)
        let number2 = Int(textField2.text!)
        let number3 = Int(textField3.text!)
        let number4 = Int(textField4.text!)
        let number5 = Int(textField5.text!)
        let number6 = Int(textField6.text!)
        let number7 = Int(textField7.text!)
        let number8 = Int(textField8.text!)
        let number9 = Int(textField9.text!)
        let number10 = Int(textField10.text!)
        let number11 = Int(textField11.text!)
        let number12 = Int(textField12.text!)

        
        /***************************************************
        * Start Your Code Here For MVP
        ***************************************************/

        
        
        
        
        
        
        /***************************************************
        * End Your Code Here For MVP
        ***************************************************/

//        Uncomment the six lines below for MVP

//        equalToLabel.text = "evaluates to \(equalTo)"
//        notEqualToLabel.text = "evaluates to \(notEqualTo)"
//        greaterThanLabel.text = "evaluates to \(greaterThan)"
//        lessThanLabel.text = "evaluates to \(lessThan)"
//        greaterThanOrEqualToLabel.text = "evaluates to \(greaterThanOrEqualTo)"
//        lessThanOrEqualToLabel.text = "evaluates to \(lessThanOrEqualTo)"
    }
    
    @IBAction func stretchOne(sender: UIButton)
    {
        numberOfTicketsTextField.resignFirstResponder()
        tickets = Int(numberOfTicketsTextField.text!)!

        
        /***************************************************
        * Start Your Code Here For Stretch 1
        ***************************************************/

        
        /***************************************************
        * End Your Code Here For Stretch 1
        ***************************************************/

//        Uncomment the two lines below for Stretch #1
        
//        purchasedPackagesLabel.text = "Buy \(purchasedPackages) packages"
//        individualTicketsLabel.text = "Buy \(individualTickets) single tickets"
    }
    
    @IBAction func stretchTwoRight(sender: UISwipeGestureRecognizer)
    {
        if sender.direction == UISwipeGestureRecognizerDirection.Right
        {
            
            /***************************************************
            * Start Your Code Here For Stretch 2 - right swipe
            ****************************************************/

            /***************************************************
            * End Your Code Here For Stretch 2 - right swipe
            ***************************************************/
            
        }
        numberOfTicketsTextField.text = "\(tickets)"

    }
    
    @IBAction func stretchTwoLeft(sender: UISwipeGestureRecognizer)
    {
        if sender.direction == UISwipeGestureRecognizerDirection.Left
        {
            
            /***************************************************
             * Start Your Code Here For Stretch 2 - left swipe
             ****************************************************/

            /***************************************************
             * End Your Code Here For Stretch 2 - left swipe
             ***************************************************/
            
        }

        numberOfTicketsTextField.text = "\(tickets)"
    }


    @available(iOS 9.0, *)
    @IBAction func stretchThree(sender: UIButton)
    {
        urlAddOnTextField.resignFirstResponder()
        
        
        /***************************************************
        * Start Your Code Here For Stretch 3 
        ***************************************************/

        
        
        /***************************************************
        * End Your Code Here For Stretch 3
        ***************************************************/
        
//        Uncomment the 4 lines below for Stretch #3

//        let myUrl = NSURL(string: urlAddOn)
//        let svc = SFSafariViewController(URL: myUrl!)
//        svc.delegate = self
//        self.presentViewController(svc, animated: true, completion: nil)

    }
}
