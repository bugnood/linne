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
                    
                    ForEach(0..<20) { i in
                        GridRow {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image("userIcon")
                                        .resizable()
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 30)
                                                .stroke(Color.gray, lineWidth: 1))
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(30)
                                    Text("test.user")
                                    Spacer()
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                Text("サンプル")
                                Divider()
                                Text("タイトル")
                                    .fontWeight(.bold)
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Image(systemName: "clock.arrow.circlepath")
                                                .foregroundColor(.gray)
                                            Text("2023年10月23日")
                                                .font(.caption)
                                        }
                                        HStack {
                                            Image(systemName: "clock.arrow.circlepath")
                                                .foregroundColor(.gray)
                                            Text("17:00~18:00")
                                                .font(.caption)
                                        }
                                        HStack {
                                            Image(systemName: "clock.arrow.circlepath")
                                                .foregroundColor(.gray)
                                            Text("20人")
                                                .font(.caption)
                                        }
                                        HStack {
                                            Image(systemName: "clock.arrow.circlepath")
                                                .foregroundColor(.gray)
                                            Text("2,000円")
                                                .font(.caption)
                                        }
                                    }
                                    Spacer()
                                    Image("userIcon")
                                        .resizable()
                                        .frame(width: 180.0, height: 100.0)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.gray, lineWidth: 1))
                                }
                            }
                            .padding(.all, 10.0)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(.white)
                            .cornerRadius(10.0)
                            
                        }
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
