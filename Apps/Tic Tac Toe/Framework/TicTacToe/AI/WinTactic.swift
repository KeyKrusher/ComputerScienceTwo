//
//  WinTactic.swift
//  TicTacToe
//
//  Created by Chubz Clark on 1/28/17.
//  Copyright © 2017 Epicenter Studios. All rights reserved.
//

import Foundation

/** 
 Tactic #1 in Newell and Simon's strategy.
 If the player can play one mark to win, returns the winning position.
 */
struct WinTactic: NewellAndSimonTactic {
    
    func choosePositionForMark(_ mark: Mark, onGameBoard gameBoard: GameBoard) -> GameBoard.Position? {
        for emptyPosition in gameBoard.emptyPositions {
            let
            possibleBoard  = gameBoard.cloneWithMark(mark, atPosition: emptyPosition),
            outcomeAnalyst = OutcomeAnalyst(gameBoard: possibleBoard)
            if let outcome = outcomeAnalyst.checkForOutcome() {
                assert(outcome.winner == nil || outcome.winner == Winner.fromMark(mark))
                return emptyPosition
            }
        }
        return nil
    }
}
