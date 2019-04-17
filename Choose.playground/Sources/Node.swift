import Foundation

public class Node {
    
    var text: String
    var nextNode: Node?
    var checkPoint: CheckPoint?
    var choices = [Node]()
    var animation: String?
    var endLine: Bool?
    
    init(text: String) {
        self.text = text
    }
    
    public func addNextNode(node: Node) {
        self.nextNode = node
    }
}

public class CheckPoint {
    var node: Node
    var position: Int
    
    init(node: Node, position: Int) {
        self.node = node
        self.position = position
    }
}
