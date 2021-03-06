//
//  Levels.swift
//  Breakout
//
//  Created by period2 on 3/22/17.
//  Copyright (c) 2017 Chubz Clark. All rights reserved.
//

import Foundation

open class Levels {

static let levels = [levelOne, levelTwo, levelThree, levelFour]
    
static let levelOne: [[Int]] = [
    [1,0,1,0,1,0,1],
    [0,1,0,1,0,1,0],
    [1,0,1,0,1,0,1],
    [0,1,0,1,0,1,0],
    [1,0,1,0,1,0,1],
    [0,1,0,1,0,1,0],
    [1,0,1,0,1,0,1]
]

static let levelTwo: [[Int]]  = [
    [1,1,1,1,1,1,1],
    [1,1,1,1],
    [1,1,1],
    [1,1,1,1],
    [1,1,1,1,1,1,1]
]

static let levelThree: [[Int]] = [
    [1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1]
]

static let levelFour: [[Int]] = [
        [1,1,0,1,1,0,1],
        [1,0,1,1,0,1,1],
        [0,1,1,0,1,1,0],
        [1,1,0,1,1,0,1],
        [1,0,1,1,0,1,1],
        [0,1,1,0,1,1,0],
        [1,1,0,1,1,0,1]
    ]
}
