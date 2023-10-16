//
//  HomeView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/10/16.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .white.withAlphaComponent(1)
    }
    
    var body: some View {
        
        
        
        // フッター
        HStack {
            TabView {
                ShareView()
                    .tabItem {
                        VStack {
                            Image(systemName: "house")
                        }
                    }
                Text("Tab 2")
                    .tabItem {
                        VStack {
                            Image(systemName: "sparkle.magnifyingglass")
                            //                            Text("Tray")
                        }
                    }
                Text("Tab 3")
                    .tabItem {
                        VStack {
                            Image(systemName: "envelope.fill")
                            //                            Text("External Drive")
                        }
                    }
                    .badge(5)
                Text("Tab 3")
                    .tabItem {
                        VStack {
                            Image(systemName: "externaldrive")
                            //                            Text("External Drive")
                        }
                    }
            }
            .background(.white)
        }
    }
}

#Preview {
    HomeView()
}
