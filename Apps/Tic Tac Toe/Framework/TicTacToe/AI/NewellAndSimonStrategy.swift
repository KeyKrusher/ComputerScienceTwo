//
//  NewellAndSimonStrategy.swift
//  TicTacToe
//
//  Created by Chubz Clark on 1/28/17.
//  Copyright © 2017 Epicenter Studios. All rights reserved.
//

import Foundation

/** 
 An intelligent agent which implements Newell and Simon's Tic-tac-toe strategy for a 3x3 game board.
 For more details, refer to strategy.pdf.
 */
final class NewellAndSimonStrategy: TicTacToeStrategy {
    
    init(tactics: [NewellAndSimonTactic] = [
        WinTactic(),
        BlockTactic(),
        ForkTactic(),
        BlockForkTactic(),
        CenterTactic(),
        OppositeCornerTactic(),
        EmptyCornerTactic(),
        EmptySideTactic()
        ]) {
        self.tactics = tactics
    }
    
    func choosePositionForMark(_ mark: Mark, onGameBoard gameBoard: GameBoard, completionHandler: (GameBoard.Position) -> Void) {
        assert(gameBoard.dimension == 3)
        
        let position = tactics.reduce(nil) { (position, tactic) in
            position ?? tactic.choosePositionForMark(mark, onGameBoard: gameBoard)
        }
        
        completionHandler(position!)
    }
    
    fileprivate let tactics: [NewellAndSimonTactic]
}
