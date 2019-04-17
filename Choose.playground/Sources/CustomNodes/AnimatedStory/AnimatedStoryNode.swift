import Foundation
import SpriteKit

public class AnimatedStoryNode: SKNode {
    
    var playerNode: SKSpriteNode
    
    public override init() {
        
        self.playerNode = SKSpriteNode(imageNamed: "player")
        
        super.init()
        
        self.addChild(self.playerNode)
        
        // Set position
        self.playerNode.position.y = -(Sizes.sceneHeight / 3)
        // Initial Position for player
        self.playerNode.position.x = 3 * -(Sizes.sceneWidth / 8)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public func moveAhead() {
        self.playerNode.position.x += 2 * (Sizes.sceneWidth / 8)
    }
    
    public func putPlayer(inPosition pos: CGFloat) {
        self.playerNode.position.x = 3 * -(Sizes.sceneWidth / 8)
        
        self.playerNode.position.x += (pos - 1) * 2 * (Sizes.sceneWidth / 8)
    }
    
    public func animatePlayer(named: String) {
        guard let textures = Array.animationsTextures[named] else { return }
        self.playerNode.removeAllActions()
        let texture = SKTexture(imageNamed: "playerAnimations/\(named)/\(named)1")
        self.playerNode.size = texture.size()
        self.playerNode.run(SKAction.repeatForever(SKAction.animate(with: textures, timePerFrame: 0.15)))
    }
}
