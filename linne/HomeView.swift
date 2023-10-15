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
                            Text("共有画面")
                        }
                    }
                Text("Tab 2")
                    .tabItem {
                        VStack {
                            Image(systemName: "tray")
                            Text("Tray")
                        }
                    }
                Text("Tab 3")
                    .tabItem {
                        VStack {
                            Image(systemName: "externaldrive")
                            Text("External Drive")
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
