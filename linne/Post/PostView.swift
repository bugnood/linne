//
//  PostView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/10/22.
//

import SwiftUI

struct PostView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Close Modal") {
            isActive = false
        }
    }
}

//#Preview {
//    PostView()
//}
