//
//  LoginView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/10/03.
//

import SwiftUI

struct LoginView: View {
    
    // メールアドレス
    @State private var email: String = ""
    // パスワード
    @State private var password: String = ""
    // 背景色の設定
    let backGroundColor = LinearGradient(gradient: Gradient(colors: [Color.backgroundTop, Color.backgroundBottom]), startPoint: .top, endPoint: .bottom)
    // ログイン判定フラグ
    @State private var loginFlag: Bool = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                // 全体の背景カラー
                backGroundColor.ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    // タイトル
                    Text("Linneにログイン")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.vertical, 60.0)
                    // メールアドレス
                    Text("メールアドレス")
                        .foregroundColor(.white)
                    TextField("", text: $email)
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    Divider()
                        .background(Color.white)
                        .padding(.bottom, 20.0)
                    // パスワード
                    Text("パスワード")
                        .foregroundColor(.white)
                    SecureField("", text: $password)
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    Divider()
                        .background(Color.white)
                        .padding(.bottom, 20.0)
                    // ログインボタン
                    Button {
                        // パスワード一致判定
                        if (password == "12345") {
                            self.loginFlag = true
                        }
                    } label: {
                        Text("ログイン")
                            .modifier(loginButton())
                    }
                    .navigationDestination(isPresented: $loginFlag) {
                        HomeView()
                        // 戻るボタンを非表示
                            .navigationBarBackButtonHidden(true)
                    }
                    .padding(.bottom, 100.0)
                    Spacer()
                }
                .padding()
            }
            .onTapGesture {
                UIApplication.shared.closeKeyboard()
            }
        }
    }
}

// ログインボタンのスタイル
struct loginButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.all)
            .frame(maxWidth: 400, minHeight: 60.0)
            .background(.btn)
            .cornerRadius(30.0)
    }
}

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    LoginView()
}
