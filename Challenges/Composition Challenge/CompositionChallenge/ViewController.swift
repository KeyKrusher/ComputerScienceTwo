//
//  ViewController.swift
//  CompositionChallenge
//
//  Created by Brian Bosworth on 6/7/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLine1 = LineSegment()
    @IBOutlet weak var myTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let point1 = CGPoint(x: 2, y: 0)
        let point2 = CGPoint(x: 0, y: 2)
        let myLine2 = LineSegment(Point1: point1, Point2: point2)

        myTextView.text =   "Line 1:\n" +
                            "  Starts at \(myLine1.start)\n" +
                            "  Ends at \(myLine1.end)\n"
        //Uncomment for Stretch #1
        //                    + "  Slope is \(myLine1.getSlope())\n"
        //Uncomment for Stretch #2
        //                    + "  Length is \(myLine1.getLength())\n\n" +
        //                    "Line 2:\n" +
        //                    "  Starts at \(myLine2.start)\n" +
        //                    "  Ends at \(myLine2.end)\n"
        //Uncomment for Stretch #1
        //                    + "  Slope is \(myLine2.getSlope())\n"
        //Uncomment for Stretch #2
        //                   + "  Length is \(myLine2.getLength())"
    }
}

