import Foundation
import SpriteKit
import PlaygroundSupport

public class GameMaster {
    var gameController: GameController!
    
    public init() {
        
    }
    
    public func startGame() {
        gameController = GameController(gameMaster: self)
        gameController.startGame()
        
        PlaygroundSupport.PlaygroundPage.current.liveView = gameController.sceneView
    }
    
    public func startOver() {
        let newGame = GameController(gameMaster: self)
        newGame.scene.gameController = newGame
        let transition = SKTransition.fade(withDuration: 1.5)
        gameController.sceneView.presentScene(newGame.scene, transition: transition)
        
    }
    
}
