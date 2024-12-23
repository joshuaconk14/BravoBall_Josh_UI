//
//  NavigationBarView.swift
//  BravoBall
//
//  Created by Joshua Conklin on 12/23/24.
//

import Foundation
import RiveRuntime
import SwiftUI


struct NavigationBarView: View {
    @StateObject private var globalSettings = GlobalSettings()
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // Program View
            HomeProgramView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Program")
                }
                .tag(0)
            
            // Community Chat
            Text("Community Chat")
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                    Text("Community")
                }
                .tag(1)
            
            // Add Drill/Exercise
            Text("Add New")
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Add")
                }
                .tag(2)
            
            // Saved Items
            Text("Saved Items")
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Saved")
                }
                .tag(3)
            
            // Profile
            SettingsView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(4)
        }
        .accentColor(globalSettings.primaryYellowColor)
    }
}

struct NavBarPreview: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
