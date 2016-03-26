import Foundation

import SpriteKit

class SGScene: SKScene
{
    //MARK: Public functions expected to be overridden
    func screenIneractionStarted(location: CGPoint) {
        
    }
    
    func screenInteractionMoved(location: CGPoint) {
        
    }
    
    func screenInteractionEnded(location: CGPoint) {
        
    }
    
    func buttonEvent(event: String, velocity: Float, pushedOn: Bool) {
        
    }
    
    func stickEvent(event: String, point: CGPoint) {
        
    }
    
    //MARK: Camera functionality
    func centerCameraOnPoint(point: CGPoint) {
        guard let camera = camera else { return }
        
        camera.position = point
    }
    
    //MARK: Localization
    func lt(text: String) -> String {
        return NSLocalizedString(text, comment: "")
    }
    
    
}
