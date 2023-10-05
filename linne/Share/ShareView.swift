//
//  ShareView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/10/05.
//

import SwiftUI

struct ShareView: View {
    
    // 背景色の設定
    let backGroundColor = LinearGradient(gradient: Gradient(colors: [Color.backgroundTop, Color.backgroundBottom]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        
        ZStack {
            // 全体の背景カラー
            backGroundColor.ignoresSafeArea()
            
            VStack {
                
                ScrollView(showsIndicators: false) {
                    
                    Text("aaa")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 300.0)
                        .background(.white)
                        .cornerRadius(10.0)
                        .padding(.horizontal)
                    Text("aaa")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 300.0)
                        .background(.white)
                        .cornerRadius(10.0)
                        .padding(.horizontal)
                    Text("aaa")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 300.0)
                        .background(.white)
                        .cornerRadius(10.0)
                        .padding(.horizontal)
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    ShareView()
}
