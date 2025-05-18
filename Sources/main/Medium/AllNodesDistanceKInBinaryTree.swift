class AllNodesDistanceKInBinaryTree {
    func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
        guard let root , let target  else { return [] }
        
        // Create a graph representation of the tree
        var graph = [Int: [Int]]()
        // Build the graph (adjacency list) using DFS
        func buildGraph(_ child: TreeNode?, _ parent: TreeNode?) {
            guard let child else { return }
            if let parent = parent {
                // Add the parent-child relationship in both directions
                graph[child.val, default: []].append(parent.val)
                graph[parent.val, default: []].append(child.val)
            }
            buildGraph(child.left, child)
            buildGraph(child.right, child)            
        }
        // Start building the graph from the root
        buildGraph(root, nil)

        // Initialize the result array to store nodes at distance k
        var result = [Int]()
        // Set to keep track of visited nodes
        var visited = Set<Int>()
        
        // Perform DFS to find all nodes at distance k from the target
        func dfs(_ nodeVal: Int, _ depth: Int) {
            // If the node is already visited, return
            guard !visited.contains(nodeVal) else { return }
            // Mark the node as visited
            visited.insert(nodeVal)
            // If the depth is equal to k, add the node value to the result
            if depth == k {
                result.append(nodeVal)
                return
            }

            // If the depth exceeds k, return
            if depth > k {
                return
            }
            
            // Recursively visit all neighbors (parent and children) of the current node
            for neighbor in graph[nodeVal] ?? [] {
                dfs(neighbor, depth + 1)
            }
        }
        // Start DFS from the target node with depth 0
        dfs(target.val, 0)
        // Return the result array containing all nodes at distance k
        return result
    }
}