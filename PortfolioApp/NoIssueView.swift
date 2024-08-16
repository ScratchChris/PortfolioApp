//
//  NoIssueView.swift
//  PortfolioApp
//
//  Created by Chris Turner on 15/08/2024.
//

import SwiftUI

struct NoIssueView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text("No Issue Selected")
            .font(.title)
            .foregroundStyle(.secondary)
        Button("New Issue") {
            // make a new issue
        }
    }
}

#Preview {
    NoIssueView()
}
