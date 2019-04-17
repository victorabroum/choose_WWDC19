import Foundation
import SpriteKit

public class HUDNode: SKNode {
    
    var storyLabel = StoryLabelNode(text: "")
    var buttonChoice01 = ButtonNode(backgroundNamed: "right_button", labelText: "Choice One")
    var buttonChoice02 = ButtonNode(backgroundNamed: "left_button", labelText: "Choice Two")
    var buttonContinue = ButtonNode(backgroundNamed: "left_button", labelText: "Continue")
    
    public override init() {
        super.init()
        
        // StoryLabel
        storyLabel.position.y = Sizes.sceneHeight / 6
        self.addChild(storyLabel)
        
        // Button Choice 01
        buttonChoice01.labelNode.fontColor = .black
        buttonChoice01.action = {
            print("Button ONE")
        }
        self.addChild(buttonChoice01)
        
        // Button Choice 02
        buttonChoice02.labelNode.fontColor = .black
        buttonChoice02.action = {
            print("Button TWO")
        }
        self.addChild(buttonChoice02)
        
        // Button Continue
        buttonContinue.labelNode.fontColor = .black
        buttonContinue.action = {
            print("Button Continue")
        }
        self.addChild(buttonContinue)
        
        refreshButtonPosition()
        
        dissmisContinue()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
