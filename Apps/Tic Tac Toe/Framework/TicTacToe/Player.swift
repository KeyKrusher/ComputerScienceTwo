//
//  Player.swift
//  TicTacToe
//
//  Created by Chubz Clark on 1/28/17.
//  Copyright © 2017 Epicenter Studios. All rights reserved.
//
import Foundation

/** Represents a Tic-tac-toe contestant, either human or computer. */
internal final class Player {
    
    init(mark: Mark, gameBoard: GameBoard, strategy: TicTacToeStrategy) {
        self.mark = mark
        self.gameBoard = gameBoard
        self.strategy = strategy
    }
    
    let mark: Mark
    
    func choosePositionWithCompletionHandler(_ completionHandler: (GameBoard.Position) -> Void) {
        strategy.choosePositionForMark(mark, onGameBoard: gameBoard, completionHandler: completionHandler)
    }

    fileprivate let gameBoard: GameBoard
    fileprivate let strategy: TicTacToeStrategy
}
