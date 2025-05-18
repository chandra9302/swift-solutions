final class AccountsMerge {
    // Union-Find (Disjoint Set Union) implementation
    class UnionFind {
        // This dictionary will map each email to its lead (or root)
        private var leadLookup = [String: String]()

        // This function finds the lead (or root) of the given email
        // It uses path compression to optimize the lookup process
        func find(_ email: String) -> String {
            var lead = email
            while leadLookup[lead] != lead {
                lead = leadLookup[lead] ?? lead
            }
            return lead
        }

        // This function unites two emails by linking their leads
        // It uses union by rank to optimize the union process
        func union(_ email1: String, _ email2: String) {
            let lead1 = find(email1)
            let lead2 = find(email2)

            // If the leads are different, we link them
            if lead1 != lead2 {
                leadLookup[lead1] = lead2
            }
        }

        // This function adds a new email to the lead lookup
        // This is used as a base case for the union-find structure where each email is its own lead
        func addLead(_ email: String) {
            if leadLookup[email] == nil {
                leadLookup[email] = email
            }
        }
    }

    func accountsMerge(_ accounts: [[String]]) -> [[String]] {
        // Dictionary to map each email to its corresponding name
        var emailToName = [String: String]()
        // Dictionary to represent the graph of emails
        var graph = [String: [String]]()
        // Create an instance of UnionFind to manage the leads
        let unionFind = UnionFind()
        

        // Iterate through each account
        for account in accounts {
            // The first element is the name, and the rest are emails
            let name = account[0]
            // The first email is the lead for this account
            let lead = account[1]
            // Add the lead email to the union-find structure
            emailToName[lead] = name
            unionFind.addLead(lead)
            // Iterate through the rest of the emails
            for email in account.dropFirst() {
                // Add the email to the graph
                emailToName[email] = name
                // Add the email to union-find structure
                unionFind.addLead(email)
                // Union the lead email with the current email
                unionFind.union(lead, email)        
            }
        }

        // Create the graph by grouping emails under their leads
        for email in emailToName.keys {
            let lead = unionFind.find(email)
            graph[lead, default: []].append(email)
        }

        // Sort the emails for each lead and prepare the result
        var result = [[String]]()
        for (lead, emails) in graph {
            result.append([emailToName[lead] ?? ""] + emails.sorted())
        }

        return result
    }
}