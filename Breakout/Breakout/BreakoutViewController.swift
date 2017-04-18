//
//  BreakoutViewController.swift
//  Breakout
//
//  Created by period2 on 3/22/17.
//  Copyright (c) 2017 Chubz Clark. All rights reserved.
//

import UIKit
import CoreMotion

class BreakoutViewController: UIViewController {

    @IBOutlet var breakoutView: BreakoutView!  {
        didSet {
            breakoutView.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(BreakoutViewController.launchBall(_:))))
            breakoutView.addGestureRecognizer(UIPanGestureRecognizer(target: breakoutView, action: #selector(BreakoutView.panPaddle(_:))))
            breakoutView.behavior.hitBreak =  self.ballHitBrick
            breakoutView.behavior.leftPlayingField =  self.ballLeftPlayingField
        }
    }
  
    @IBOutlet var ballsLeftLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet weak var gravityLabel: UILabel!
    
    var maxBalls: Int = Settings().maxBalls {
        didSet { ballsLeftLabel?.text = "⦁".`repeat`(maxBalls - ballsUsed) }
    }
    
    var ballsUsed = 0 {
        didSet { ballsLeftLabel?.text = "⦁".`repeat`(maxBalls - ballsUsed) }
    }
    
    private var score = 0 {
        didSet{ scoreLabel?.text = "\(score)" }
    }
    
    private var ballsVelocities = [CGPoint]()
    private var gameViewSizeChanged = true
    
    private let motionManager = CMMotionManager()
    private let settings = Settings()
    
    // MARK: - LIFE CYCLE
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if gameViewSizeChanged {
            gameViewSizeChanged = false
            breakoutView.resetLayout()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        breakoutView.animating = true
        loadSettings()
        
        breakoutView.ballsVelocities = ballsVelocities
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
          breakoutView.animating = false
        
         ballsVelocities = breakoutView.ballsVelocities
    }
    
    override func viewWillTransition(to size: CGSize,
                            with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        gameViewSizeChanged = true
    }

    // MARK: - GESTURES
    
    func launchBall(_ gesture: UITapGestureRecognizer){
        if gesture.state == .ended {
            if breakoutView.balls.count > 0 {
                     breakoutView.pushBalls()
            } else if ballsUsed < maxBalls {
                ballsUsed += 1
                breakoutView.addBallToGame()
            }
        }
    }
    
 /*   func launchBall(_ gesture: UITapGestureRecognizer){
        if gesture.state == .ended {
            if ballsUsed < maxBalls {
                ballsUsed += 1
                breakoutView.addBallToGame()
            }
        }
    }*/

    
    // MARK: - LOAD SEIITINGS
    
    private func loadSettings() {
        
        maxBalls = settings.maxBalls
        breakoutView.paddleWidthPercentage = settings.paddleWidth
        if breakoutView.levelInt != settings.level {
            breakoutView.levelInt = settings.level
        }
        breakoutView.launchSpeedModifier = settings.ballSpeedModifier
        breakoutView.realGravity = settings.realGravity
        breakoutView.gravityMagnitudeModifier = CGFloat(settings.gravityMagnitudeModifier)
        gravityLabel?.text = (formatter.string(from: NSNumber(value: settings.gravityMagnitudeModifier)) ?? "0.00") + " g"

    }
    
    // MARK: - RESET GAME
    private func resetGame()
    {
        breakoutView.reset()
        ballsUsed = 0
        score = 0
    }
    
    // MARK: - Hit BRICK
    func ballHitBrick(_ behavior: UICollisionBehavior, ball: BallView, brickIndex: Int) {
        breakoutView.removeBrickFromGame(brickIndex: brickIndex)
        score += 1
        if breakoutView.bricks.count == 0 {
            breakoutView.removeAllBallsFromGame()
            showGameEndedAlert(true, message: "You're winner!")
        }
    }
    
    // MARK: - Ball LEFT Plaing FIELD
    func ballLeftPlayingField(_ ball: BallView)
    {
        if(ballsUsed == maxBalls && breakoutView.balls.count == 1) {
            showGameEndedAlert(false, message: "Get good skrub!")
            
        }
        breakoutView.removeBallFromGame(ball)
    }
    
    // MARK: - ALERT
    
    private func showGameEndedAlert(_ playerWon: Bool, message: String) {
        let title = playerWon ? Const.congratulationsTitle : Const.gameOverTitle
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        // Code for displaying the You're winner! image
        let winnerImage = UIImage(named: "winnerMeme")
        let loserImage = UIImage(named: "loserMeme")
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        alert.view.addSubview(imageView)
        // Check win condition
        if playerWon {
            imageView.image = winnerImage
        }
        else {
            imageView.image = loserImage
        }
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default) {
            (action) in
            self.resetGame()
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) {
            (action) in
            // do nothing
        })
        DispatchQueue.main.async {
            if self.presentedViewController == nil {
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    override var canBecomeFirstResponder : Bool {
        return true;
    }
    
    // on device shake
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        breakoutView.pushBalls()
    }
  
    private struct Const {
        static let gameOverTitle = "Game over!"
        static let congratulationsTitle = "Congratulations!"
         static let maxPaddleSpeed = 25.0
    }
}

let formatter:NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.maximumFractionDigits = 2
    formatter.locale = Locale.current
    return formatter
    
} ()

