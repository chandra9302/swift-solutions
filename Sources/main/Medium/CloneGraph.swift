class GraphNode {
    var val: Int
    var neighbors: [GraphNode?]
    
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
class CloneGraph {
    func cloneGraph(_ node: GraphNode?) -> GraphNode? {
        // Check if the input node is nil
        guard let node = node else { return nil }
        
        // Dictionary to keep track of visited nodes
        var visited = [Int: GraphNode]()
        
        // Depth-first search (DFS) function to clone the graph
        func dfs(_ node: GraphNode) -> GraphNode {
            // If the node has already been visited, return the cloned node
            if let clonedNode = visited[node.val] {
                return clonedNode
            }
            
            // Create a new cloned node
            let clonedNode = GraphNode(node.val)
            // Store the cloned node in the visited dictionary
            visited[node.val] = clonedNode
            
            // Recursively clone the neighbors
            for neighbor in node.neighbors {
                // Check if the neighbor is not nil
                if let neighbor = neighbor {
                    // Clone the neighbor and append it to the cloned node's neighbors
                    clonedNode.neighbors.append(dfs(neighbor))
                }
            }
            
            // Return the cloned node
            return clonedNode
        }
        
        // Start the DFS from the input node
        // and return the cloned graph
        return dfs(node)
    }
}