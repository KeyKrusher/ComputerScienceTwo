//
//  BallView.swift
//  Breakout
//
//  Created by period2 on 3/22/17.
//  Copyright (c) 2017 Chubz Clark. All rights reserved.
//

import UIKit

class BallView: UIView {
    fileprivate struct Constants {
        static let backgroundColor = UIColor.white
    }
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        setAppearance()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func setAppearance (){
        self.backgroundColor = Constants.backgroundColor
        self.layer.cornerRadius = self.frame.width / 2
    }
}
