import Foundation
import SpriteKit

extension HUDNode {
    public func dissmisChoices() {
        self.buttonChoice01.run(SKAction.hide())
        self.buttonChoice02.run(SKAction.hide())
    }
    
    public func showChoices() {
        self.buttonChoice01.run(SKAction.unhide())
        self.buttonChoice02.run(SKAction.unhide())
    }
    
    public func dissmisContinue() {
        self.buttonContinue.run(SKAction.hide())
    }
    
    public func showContinue() {
        self.buttonContinue.run(SKAction.unhide())
    }
    
    public func refreshButtonPosition() {
        // Button Choice 01
        buttonChoice01.position.x = -(Sizes.sceneWidth / 4)
        buttonChoice01.position.y = storyLabel.position.y - (storyLabel.frame.height + 60)
        
        // Button Choice 02
        buttonChoice02.position.x = Sizes.sceneWidth / 4
        buttonChoice02.position.y = buttonChoice01.position.y
        
        // Button Continue
        buttonContinue.position.y = buttonChoice01.position.y
    }
}
