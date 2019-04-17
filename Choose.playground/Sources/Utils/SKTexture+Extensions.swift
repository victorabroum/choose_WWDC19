import Foundation
import SpriteKit

extension Array where Element == SKTexture {
    private static let animationPath: String = "playerAnimations"
    private static let comp_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/comp_idle/comp_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/comp_idle/comp_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/comp_idle/comp_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/comp_idle/comp_idle4"),
        SKTexture(imageNamed: "\(Array.animationPath)/comp_idle/comp_idle5"),
        SKTexture(imageNamed: "\(Array.animationPath)/comp_idle/comp_idle6"),
    ]
    
    private static let start_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/start_idle/start_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/start_idle/start_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/start_idle/start_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/start_idle/start_idle4"),
    ]
    
    private static let mec_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle4"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle5"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle6"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle7"),
        SKTexture(imageNamed: "\(Array.animationPath)/mec_idle/mec_idle8"),
    ]
    
    private static let academy_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/academy_idle/academy_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/academy_idle/academy_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/academy_idle/academy_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/academy_idle/academy_idle4"),
    ]
    
    private static let brazil_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/brazil_idle/brazil_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/brazil_idle/brazil_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/brazil_idle/brazil_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/brazil_idle/brazil_idle4"),
    ]
    
    private static let canada_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/canada_idle/canada_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/canada_idle/canada_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/canada_idle/canada_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/canada_idle/canada_idle4"),
    ]
    
    private static let create_calculator_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/create_calculator_idle/create_calculator_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_calculator_idle/create_calculator_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_calculator_idle/create_calculator_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_calculator_idle/create_calculator_idle4"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_calculator_idle/create_calculator_idle5"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_calculator_idle/create_calculator_idle6"),
    ]
    
    private static let create_games_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/create_games_idle/create_games_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_games_idle/create_games_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_games_idle/create_games_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/create_games_idle/create_games_idle4"),
    ]
    
    private static let not_academy_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle4"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle5"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle6"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle7"),
        SKTexture(imageNamed: "\(Array.animationPath)/not_academy_idle/not_academy_idle8"),
    ]
    
    private static let wwdc2019_idle: [SKTexture] = [
        SKTexture(imageNamed: "\(Array.animationPath)/wwdc2019_idle/wwdc2019_idle1"),
        SKTexture(imageNamed: "\(Array.animationPath)/wwdc2019_idle/wwdc2019_idle2"),
        SKTexture(imageNamed: "\(Array.animationPath)/wwdc2019_idle/wwdc2019_idle3"),
        SKTexture(imageNamed: "\(Array.animationPath)/wwdc2019_idle/wwdc2019_idle4"),
    ]
    
    public static let animationsTextures: [String : [SKTexture]] = [
        "start_idle" : Array.start_idle,
        "mec_idle" : Array.mec_idle,
        "comp_idle" : Array.comp_idle,
        "academy_idle" : Array.academy_idle,
        "brazil_idle" : Array.brazil_idle,
        "canada_idle": Array.canada_idle,
        "create_calculator_idle": Array.create_calculator_idle,
        "create_games_idle" : Array.create_games_idle,
        "not_academy_idle" : Array.not_academy_idle,
        "wwdc2019_idle" : Array.wwdc2019_idle
    ]
}

