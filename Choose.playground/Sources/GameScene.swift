import Foundation
import SpriteKit

public class GameScene: SKScene {
    
    var gameController: GameController!
    var mapLineNode: SKSpriteNode!
    var headerNode: SKSpriteNode!
    var startButtonNode: SKNode!
    
    public override func sceneDidLoad() {
        // Setup Assets
        
        // Get nodes reference
        if let node = self.childNode(withName: "mapLineNode") as? SKSpriteNode {
            self.mapLineNode = node
        }
        
        if let node = self.childNode(withName: "startButtonNode") {
            self.startButtonNode = node
        }
        
        if let node = self.childNode(withName: "headerNode") as? SKSpriteNode {
            self.headerNode = node
        }
        
    }
    
    override public func didMove(to view: SKView) {
        
        let startButton = ButtonNode(backgroundNamed: "bg_button_home", labelText: "") {
            self.gameController.presentScene()
        }
        startButton.xScale = 1
        startButton.yScale = 1
        if (self.startButtonNode != nil) {
            self.startButtonNode.addChild(startButton)
        }
        
        // Create Audio Node
        let bgAudioNode = SKAudioNode(fileNamed: "bgAudio")
        bgAudioNode.autoplayLooped = true
        self.addChild(bgAudioNode)
        
    }
}
