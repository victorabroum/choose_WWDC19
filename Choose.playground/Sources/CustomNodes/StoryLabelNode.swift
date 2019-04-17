import Foundation
import SpriteKit

public class StoryLabelNode: SKNode {
    var labelNode = SKLabelNode()
    
    init(text: String) {
//        self.labelNode = SKLabelNode(text: text.truncatWithBreakLine(offset: 60))
        super.init()
        
        let fontURL = Bundle.main.url(forResource: "bitcell", withExtension: "ttf")
        CTFontManagerRegisterFontsForURL(fontURL! as CFURL, CTFontManagerScope.process, nil)
        
        // Customize label node
        self.labelNode.text = text
        self.labelNode.fontName = "BitCell-Regular"
        self.labelNode.fontSize = FontSize.storyText
        self.labelNode.preferredMaxLayoutWidth = Sizes.sceneWidth - 100
        self.labelNode.numberOfLines = 0
        
        // Add Label Node to a Node how go in the Scene
        self.addChild(labelNode)
        
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public func change(text: String) {
        if (text.count <= 50) {
            self.labelNode.fontSize = FontSize.largeStoryText
        } else {
            self.labelNode.fontSize = FontSize.storyText
        }
        self.labelNode.text = text
    }
}
