//
//  ViewController.swift
//  LoopsChallenge
//
//  Created by Brian Wilson on 6/10/16.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!

    @IBOutlet weak var myTextView: UITextView!

    var values = [String]()
    var output = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func setValues()
    {
        values = [textField1.text!,textField2.text!,textField3.text!,textField4.text!,textField5.text!]
        //let integerArray:[Int] = values.map { Int($0)! }
    }

    func resignFields()
    {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
    }

    @IBAction func mvpButtonPressed(_ sender: UIButton)
    {
        resignFields()
        setValues()

        /***************************************************
        * Start Your Code Here For MVP
        ***************************************************/
        output = values.joined(separator: " ")
        /***************************************************
        * End Your Code Here For MVP
        ***************************************************/
        myTextView.text = output
    }

    @IBAction func stretch1ButtonPressed(_ sender: UIButton) {
        setValues()
        output = ""
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        output = values.joined(separator: ", ")
        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/
        myTextView.text = output

    }

    @IBAction func stretch2ButtonPressed(_ sender: UIButton) {
        resignFields()
        setValues()
        //let maximum = values[0]
        var maximum:Int = 0
        
        let integerArray:[Int] = values.map { Int($0)! }
        
        maximum = integerArray.max()!
        
        myTextView.text = "After searching the array, \(maximum) is the largest"
    }

    @IBAction func stretch3ButtonPressed(_ sender: UIButton) {
        resignFields()
        setValues()
        var total:Int = 0
        
        let integerArray:[Int] = values.map { Int($0)! }
        
        /***************************************************
        * Start Your Code Here For Stretch #3
        ***************************************************/
        for value in integerArray {
            total += value
        }
        /***************************************************
        * End Your Code Here For Stretch #3
        ***************************************************/
        myTextView.text = "The total of the array is \(total)"
    }

    @IBAction func stretch4ButtonPressed(_ sender: UIButton) {
        
        let integerArray:[Int] = values.map { Int($0)! }
        
        resignFields()
        setValues()
        var minimum = integerArray[0]
        var index = 0
        
        /***************************************************
        * Start Your Code Here For Stretch #4
        ***************************************************/
        for value in integerArray {
            if value < minimum {
                index = value
                minimum = integerArray[index]
            }
        }
        /***************************************************
        * End Your Code Here For Stretch #4
        ***************************************************/
        myTextView.text =   "After searching the array, we have\n" +
                            "found the minimum is \(minimum) and is\n" +
                            "in position #\(index)"
    }
}

