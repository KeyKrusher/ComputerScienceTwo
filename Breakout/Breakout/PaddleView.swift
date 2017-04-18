//
//  PaddleView.swift
//  Breakout
//
//  Created by period2 on 3/22/17.
//  Copyright (c) 2017 Chubz Clark. All rights reserved.
//

import UIKit

class PaddleView: UIView {
    fileprivate struct Constants {
        static let backgroundColor = UIColor.white
        static let cornerRadius: CGFloat = 5.0
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
        self.layer.cornerRadius = Constants.cornerRadius
    }

}
