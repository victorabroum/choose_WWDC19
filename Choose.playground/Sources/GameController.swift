import Foundation
import SpriteKit

public class GameController {
    var story = Story()
    var hud = HUDNode()
    var checkPoint: CheckPoint?
    var animateStory = AnimatedStoryNode()
    
    var scene: GameScene
    public var sceneView: SKView
    
    var gameMaster: GameMaster
    
    public init(gameMaster: GameMaster) {
        
        self.gameMaster = gameMaster
        
        // Preapare Story line
        story.prepare()
        
        // Load the SKScene from 'GameScene.sks'
        sceneView = SKView(frame: CGRect(x:0 , y:0, width: Sizes.sceneWidth, height: Sizes.sceneHeight))
        
        guard let gameScene = GameScene(fileNamed: "GameScene") else { fatalError("Must have a GameScene")}
        self.scene = gameScene
        self.scene.scaleMode = .aspectFill
        self.hud.alpha = 0
        self.scene.addChild(self.hud)
        self.animateStory.alpha = 0
        self.scene.addChild(self.animateStory)
        
    }
    
    public func startGame() {
        self.scene.gameController = self
        self.sceneView.presentScene(self.scene)
    }
    
    public func presentScene() {
        // First dissmis Home Scene
        let timeDissmisHome: TimeInterval = 1
        scene.headerNode.run(SKAction.moveTo(y: Sizes.sceneHeight + scene.headerNode.size.height, duration: timeDissmisHome))
        scene.mapLineNode.run(SKAction.move(
            to: CGPoint(x: 0,
                        y: -(Sizes.sceneHeight / 2)),
            duration: timeDissmisHome))
        scene.startButtonNode.run(SKAction.hide())
        self.scene.run(SKAction.wait(forDuration: timeDissmisHome)) {
            // Present Scene
            // Set hud
            
            self.hud.run(SKAction.fadeIn(withDuration: timeDissmisHome))
            self.refreshHUD()
            
            self.animateStory.run(SKAction.fadeIn(withDuration: timeDissmisHome))
        }
    }
    
    public func refreshHUD() {
        if (self.story.storyPoint.animation != nil) {
            self.animateStory.animatePlayer(named: self.story.storyPoint.animation!)
        }
        if(self.story.storyPoint.checkPoint != nil) {
            self.checkPoint = self.story.storyPoint.checkPoint
        }
        self.hud.changeTextLabel(text: self.story.storyPoint.text)
        self.refreshButtons()
    }
    
    public func refreshButtons() {
        // Set actions on HUD Buttons
        if !(self.story.storyPoint.choices.isEmpty) {
            self.hud.showChoices()
            self.hud.dissmisContinue()
            
            self.hud.buttonChoice01.changeLabel(withText: self.story.storyPoint.choices[0].text)
            self.hud.buttonChoice02.changeLabel(withText: self.story.storyPoint.choices[1].text)
            
            hud.buttonChoice01.action = {
                self.story.storyPoint = self.story.storyPoint.choices[0].nextNode!
                self.refreshHUD()
                if !(self.checkPoint != nil && self.checkPoint!.position >= 3) {
                    self.animateStory.moveAhead()
                }
                
            }
            
            hud.buttonChoice02.action = {
                self.story.storyPoint = self.story.storyPoint.choices[1].nextNode!
                self.refreshHUD()
                if !(self.checkPoint != nil && self.checkPoint!.position > 3) {
                    self.animateStory.moveAhead()
                }
            }
        } else {
            self.hud.buttonContinue.labelNode.text = "Continue"
            self.hud.showContinue()
            self.hud.dissmisChoices()
            
            if (self.story.nextPoint()) {
                self.hud.buttonContinue.action = {
                    self.refreshHUD()
                }
            } else {
                // Story end
                
                if(self.story.storyPoint.endLine != nil) {
                    self.hud.buttonContinue.labelNode.text = "Start Over"
                    self.hud.buttonContinue.action = {
                        if (self.checkPoint != nil) {
                            
                            self.gameMaster.startOver()
                        }
                    }
                } else {
                    self.hud.buttonContinue.labelNode.text = "Retry"
                    self.hud.buttonContinue.action = {
                        if (self.checkPoint != nil) {
                            self.story.storyPoint = self.checkPoint!.node
                            self.animateStory.putPlayer(inPosition: CGFloat(integerLiteral: self.checkPoint!.position))
                            self.refreshHUD()
                        }
                    }
                }
            }
            
            
        }
        
    }
}
