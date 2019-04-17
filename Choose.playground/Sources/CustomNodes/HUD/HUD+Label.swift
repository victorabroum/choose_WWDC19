import Foundation
import SpriteKit

extension HUDNode {
    
    public func changeTextLabel(text: String) {
        self.storyLabel.change(text: text)
        self.refreshButtonPosition()
    }
    
}
