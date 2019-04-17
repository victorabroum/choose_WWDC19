import Foundation
import SpriteKit

public class ButtonNode: SKNode {
    
    var backgroundNode: SKSpriteNode
    var labelNode: SKLabelNode
    var action: () -> Void
    
    init(
        backgroundNamed: String,
        labelText: String,
        action: @escaping  () -> Void = {}) {
        
        self.backgroundNode = SKSpriteNode(imageNamed: backgroundNamed)
        self.labelNode = SKLabelNode()
        self.labelNode.numberOfLines = 0
        self.labelNode.verticalAlignmentMode = .center
        self.labelNode.preferredMaxLayoutWidth = self.backgroundNode.size.width - 10
        self.labelNode.fontName = "BitCell-Regular"
        self.labelNode.fontSize = FontSize.buttonText
        self.action = action
        super.init()
        
        self.isUserInteractionEnabled = true
        
        self.addChild(self.backgroundNode)
        self.backgroundNode.zPosition = ZPosition.backgroundButton
        self.addChild(self.labelNode)
        self.labelNode.zPosition = ZPosition.labelButton
        self.changeLabel(withText: labelText)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.action()
    }
    
    public func changeLabel(withText text: String) {
        if(text.count <= 10) {
            // It is a small text
            self.xScale = 0.7
            self.yScale = 0.7
            self.labelNode.fontSize = FontSize.largeStoryText
        } else {
            self.xScale = 1
            self.yScale = 1
            self.labelNode.fontSize = FontSize.buttonText
        }
        
        self.labelNode.text = text
    }
}


