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
    // ログインボタン判定フラグ
    @State private var loginJudgeFlag = false
    // 新規登録ボタン判定フラグ
    @State private var registerJudgeFlag = false
    // 共通の背景カラー
    let backGroundColor = LinearGradient(gradient: Gradient(colors: [Color.backgroundTop, Color.backgroundBottom]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        
        // ナビゲーションの宣言
        NavigationStack {
            
            ZStack {
                // 全体の背景カラー
                backGroundColor.ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    // アプリアイコン
                    Image("linneIcon")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 100.0, height: 100.0)
                        .font(.largeTitle)
//                        .padding(.bottom, 40.0)
                    
                    // アプリタイトル
                    Text("Linneへようこそ。")
                        .modifier(title())
                    
                    // ログイン画面への遷移ボタン
                    Button {
                        loginJudgeFlag = true
                    } label: {
                        HStack {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                            Spacer()
                            Text("ログイン")
                            Spacer()
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(Color.clear)
                        }
                        .modifier(inputButton())
                        .padding(.bottom, 10.0)
                    }.navigationDestination(isPresented: $loginJudgeFlag) {
                        LoginView()
                    }
                    
                    // 新規登録画面への遷移ボタン
                    Button {
                        registerJudgeFlag = true
                    } label: {
                        HStack {
                            Image(systemName: "person.crop.circle.badge.plus")
                            Spacer()
                            Text("アカウントを作成")
                            Spacer()
                            Image(systemName: "person.crop.circle.badge.plus")
                                .foregroundColor(Color.clear)
                        }
                        .modifier(inputRegisterButton())
                        .padding(.bottom, 30.0)
                    }.navigationDestination(isPresented: $registerJudgeFlag) {
                        HomeView()
                    }
                    
                    // 詳細案内文言
                    Text("その他詳細はこちら")
                        .foregroundColor(.white)
                        .padding(.bottom, 30.0)
                    
                    // 詳細内容
                    Text("登録することをもって私は、linneのサービス利用規約、linneの差別禁止のポリシー、支払サービス利用規約、個人情報保護ポリシー、ゲスト返金ポリシー、およびホスト保証規約に同意します。")
                        .foregroundColor(.white.opacity(0.7))
                        .font(.caption)
                }
                .padding()
            }
            
        }
        // 戻るボタンのカラー
        .tint(.white)
    }
}

// ログインボタンのスタイル
struct inputButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.backgroundBottom)
            .padding(.all)
            .frame(maxWidth: 400, minHeight: 60.0)
            .background(.white)
            .cornerRadius(30.0)
    }
}

// 新規登録ボタンのスタイル
struct inputRegisterButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.all)
            .frame(maxWidth: 400, minHeight: 60.0)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white, lineWidth: 2)
            )
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
