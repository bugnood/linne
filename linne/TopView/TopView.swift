//
//  TopView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/11/23.
//

import SwiftUI

struct TopView: View {
    
    // ログインID
    @State private var loginId = ""
    // パスワード
    @State private var loginPassword = ""
    // 画面遷移有効判定フラグ
    @State private var loginJudgeFlag = false
    // 共通の背景カラー
    let backGroundColor = LinearGradient(gradient: Gradient(colors: [Color.backgroundTop, Color.backgroundBottom]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        
        // ナビゲーションの宣言
        NavigationStack {
            
            ZStack {
                // 全体の背景カラー
                backGroundColor.ignoresSafeArea()
                VStack {
                    // ログインID入力フォーム
                    TextField("ログインID", text: $loginId)
                        .autocapitalization(.none)
                    // パスワード入力フォーム
                    SecureField("パスワード", text: $loginPassword)
                    // ログインボタン
                    Button("Button") {
                        // パスワード一致判定
                        if (loginPassword == "12345") {
                            self.loginJudgeFlag = true
                        }
                    }
                }
                // ログインが成功した時の遷移先
                .navigationDestination(isPresented: $loginJudgeFlag) {
                    HomeView()
                    // 戻るボタンを非表示
                        .navigationBarBackButtonHidden(true)
                }
            }
            
        }
    }
}

#Preview {
    TopView()
}
