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
                
                VStack(alignment: .leading) {
                    Text("Linneへようこそ。")
                        .modifier(title())
                    // ログインID入力フォーム
                    TextField("ログインID", text: $loginId)
                        .autocapitalization(.none)
                        .modifier(inputStyle())
                    // パスワード入力フォーム
                    SecureField("パスワード", text: $loginPassword)
                        .modifier(inputStyle())
                    // ログインボタン
                    Button {
                        // パスワード一致判定
                        if (loginPassword == "12345") {
                            self.loginJudgeFlag = true
                        }
                    } label: {
                        Text("ログイン")
                            .modifier(inputButton())
                    }
                    .padding(.bottom, 20.0)
                    Text("その他詳細はこちら")
                        .foregroundColor(.white)
                        .padding(.bottom, 20.0)
                    Text("登録することをもって私は、Airbnbのサービス利用規約、Airbnbの差別禁止のポリシー、支払サービス利用規約、個人情報保護ポリシー、ゲスト返金ポリシー、およびホスト保証規約に同意します。")
                        .foregroundColor(.white.opacity(0.7))
                        .font(.caption)
                }
                // ログインが成功した時の遷移先
                .navigationDestination(isPresented: $loginJudgeFlag) {
                    HomeView()
                    // 戻るボタンを非表示
                        .navigationBarBackButtonHidden(true)
                }.padding()
            }
            
        }
    }
}

// 入力フォームのスタイル
struct inputStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.all)
            .frame(height: 60.0)
            .background(.textField)
            .cornerRadius(30.0)
            .accentColor(.white)
    }
}

// ログインボタンのスタイル
struct inputButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.all)
            .frame(maxWidth: 400, minHeight: 60.0)
            .background(.btn)
            .cornerRadius(30.0)
    }
}

// タイトルのスタイル
struct title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.title)
            .padding(.bottom, 50.0)
    }
}

#Preview {
    TopView()
}
