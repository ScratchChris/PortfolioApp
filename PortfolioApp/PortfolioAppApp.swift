//
//  PortfolioAppApp.swift
//  PortfolioApp
//
//  Created by Chris Turner on 02/08/2024.
//

import SwiftUI

@main
struct PortfolioAppApp: App {
    @StateObject var dataController = DataController()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SideBarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
                .onChange(of: scenePhase) { oldValue, newValue in
                    if newValue != .active {
                        dataController.save()
                    }
                }
        }
    }
}
