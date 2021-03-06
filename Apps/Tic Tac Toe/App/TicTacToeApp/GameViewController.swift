//
//  RootViewController.swift
//  TicTacToeApp
//
//  Created by Chubz Clark on 1/28/17.
//  Copyright © 2017 Epicenter Studios. All rights reserved.
//

import UIKit
import TicTacToe

/** The view controller that manages Tic-tac-toe gameplay. */
final class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameBoardView.tappedEmptyPositionHandler = { [weak self] position in
            self?.handleTappedEmptyPosition(position)
        }
        
        gameBoardView.tappedFinishedGameBoardHandler = { [weak self] in
            self?.startPlayingGame()
        }
        
        startPlayingGame()
    }
    
    @IBAction fileprivate func handleTwoPlayerModeSwitch(_ sender: AnyObject) {
        startPlayingGame()
    }
    
    @IBAction fileprivate func handleRefreshButton(_ sender: AnyObject) {
        startPlayingGame()
    }
    
    fileprivate var game: Game?
    fileprivate var userStrategyX: UserStrategy?
    fileprivate var userStrategyO: UserStrategy?
    
    @IBOutlet fileprivate weak var gameBoardView: GameBoardView!
    @IBOutlet fileprivate weak var twoPlayerModeSwitch: UISwitch!
}



// MARK: - Gameplay

private extension GameViewController {
    func startPlayingGame() {
        let gameBoard = GameBoard()
        gameBoardView.gameBoard = gameBoard
        
        userStrategyX = UserStrategy()
        userStrategyO = twoPlayerModeSwitch.isOn ? UserStrategy() : nil
        
        let
        xStrategy = userStrategyX!,
        oStrategy = userStrategyO ?? createArtificialIntelligenceStrategy()
        
        game = Game(gameBoard: gameBoard, xStrategy: xStrategy, oStrategy: oStrategy)
        game!.startPlayingWithCompletionHandler { [weak self] outcome in
            self?.gameBoardView.winningPositions = outcome.winningPositions
        }
    }
    
    func handleTappedEmptyPosition(_ position: GameBoard.Position) {
        if !reportChosenPosition(position, forUserStrategy: userStrategyX) {
            reportChosenPosition(position, forUserStrategy: userStrategyO)
        }
        gameBoardView.refreshBoardState()
    }
    
    func reportChosenPosition(_ position: GameBoard.Position, forUserStrategy userStrategy: UserStrategy?) -> Bool {
        guard let userStrategy = userStrategy, userStrategy.isWaitingToReportChosenPosition else {
            return false
        }
        
        userStrategy.reportChosenPosition(position)
        return true
    }
}
