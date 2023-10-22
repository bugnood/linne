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
                                    .font(.caption)
                                    .padding(.leading, 38.0)
                                Divider()
                                Text("タイトル")
                                    .fontWeight(.bold)
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Image(systemName: "calendar")
                                                .foregroundColor(.gray)
                                            Text("2023年10月23日")
                                                .font(.caption)
                                        }
                                        HStack {
                                            Image(systemName: "clock.fill")
                                                .foregroundColor(.gray)
                                            Text("17:00~18:00")
                                                .font(.caption)
                                        }
                                        HStack {
                                            Image(systemName: "person.fill")
                                                .foregroundColor(.gray)
                                            Text("20人")
                                                .font(.caption)
                                        }
                                        HStack {
                                            Image(systemName: "dollarsign.circle.fill")
                                                .foregroundColor(.gray)
                                            Text("2,000円")
                                                .font(.caption)
                                        }
                                    }
                                    Spacer()
                                    Image("sample")
                                        .resizable()
                                        .frame(width: 180.0, height: 100.0)
                                        .cornerRadius(5.0)
                                }
                                
                                HStack {
                                    HStack(alignment: .top) {
                                        Image(systemName: "tag")
                                        Text("ワイワイ")
                                    }
                                    .fontWeight(.bold)
                                    .padding(EdgeInsets(
                                        top: 4,
                                        leading: 8,
                                        bottom: 3,
                                        trailing: 10
                                    ))
                                    .foregroundColor(Color.white)
                                    .background(Color.backgroundBottom)
                                    .cornerRadius(50)
                                    .font(.caption)
                                    HStack(alignment: .top) {
                                        Image(systemName: "tag")
                                        Text("ワイワイ")
                                    }
                                    .fontWeight(.bold)
                                    .padding(EdgeInsets(
                                        top: 4,
                                        leading: 8,
                                        bottom: 3,
                                        trailing: 10
                                    ))
                                    .foregroundColor(Color.white)
                                    .background(Color.backgroundBottom)
                                    .cornerRadius(50)
                                    .font(.caption)
                                }
                                .padding(.top, 10.0)
                                
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
            FloatButton()
        }
        
    }
}

#Preview {
    ShareView()
}
