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
            
            // スクロールできる範囲
            ScrollView(showsIndicators: false) {
                
                // 各投稿コンテンツ
                Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                    
                    ForEach(0..<7) { i in
                        GridRow {
                            VStack {
                                Text("テスト")
                                Text("サンプル")
                            }
                            
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.white)
                        .cornerRadius(3.0)
                        
                        
                    }
                    
                }
                .padding()
                
            }
            
        }
        
    }
}

#Preview {
    ShareView()
}
