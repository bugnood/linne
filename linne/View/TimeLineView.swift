//
//  TimeLineView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/12/04.
//

import SwiftUI

struct TimeLineView: View {
    var body: some View {
        @State var selection = 1
        
        
        
        TabView(selection: $selection) {
            
            LoginView()
                .tabItem {
                    Label("", systemImage: "house")
                }
            
            ShareView()
                .tabItem {
                    Label("", systemImage: "2.circle")
                }
            
            HomeView()
                .tabItem {
                    Label("", systemImage: "3.circle")
                }
            
            HomeView()
                .tabItem {
                    Label("", systemImage: "userIcon")
                }
            
        }
    }
}

#Preview {
    TimeLineView()
}
