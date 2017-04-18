//
//  NewellAndSimonTactic.swift
//  TicTacToe
//
//  Created by Chubz Clark on 1/28/17.
//  Copyright © 2017 Epicenter Studios. All rights reserved.
//

import Foundation

/** Represents a single aspect of Newell and Simon's Tic-tac-toe strategy. */
protocol NewellAndSimonTactic {
    func choosePositionForMark(_ mark: Mark, onGameBoard gameBoard: GameBoard) -> GameBoard.Position?
}
