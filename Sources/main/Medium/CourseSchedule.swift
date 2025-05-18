class CourseSchedule {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        // Create a graph to represent the courses and their prerequisites
        // Each course is a node, and each prerequisite is a directed edge
        // from the prerequisite to the course
        var graph = Array(repeating: [Int](), count: numCourses)

        // Build the graph from the prerequisites
        // For each prerequisite pair [course, preCourse], add an edge from preCourse to course
        for prerequisite in prerequisites {
            let course = prerequisite[0]
            let preCourse = prerequisite[1]
            graph[preCourse].append(course)
        }

        // Create a set to keep track of visited nodes
        var visited = Set<Int>()

        // Perform a depth-first search (DFS) to detect cycles in the graph
        func dfs(course: Int) -> Bool {
            // If the course has already been visited, we have a cycle
            if visited.contains(course) {
                return false
            }

            // If the course has no prerequisites, we can take it
            if graph[course].isEmpty {
                return true
            }

            // Mark the course as visited
            visited.insert(course)
            // Recursively visit all the prerequisites of the course
            for neighbor in graph[course] {
                // If we find a cycle in the prerequisites, return false
                if !dfs(course: neighbor) {
                    return false
                }
            }

            // Mark the course as unvisited (backtrack)
            visited.remove(course)
            // Remove the course from the graph to indicate that it has been taken
            graph[course] = []
            // If we can take all the prerequisites, return true
            return true
        }

        // Check each course to see if it can be taken
        for course in 0..<numCourses {
            // If we find a cycle in the prerequisites, return false
            if !dfs(course: course) {
                return false
            }
        }
        // If we can take all courses without cycles, return true
        return true
    }
}
