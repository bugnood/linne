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
    
    var body: some View {
        
        ZStack {
            // 全体の背景カラー
            backGroundColor.ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                TextField("email address", text: $email)
                    .padding(.all)
                    .frame(height: 60.0)
                    .background(.textField)
                    .cornerRadius(50.0)
                SecureField("password", text: $password)
                    .padding(.all)
                    .frame(height: 60.0)
                    .background(.textField)
                    .cornerRadius(50.0)
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    // 後ほど処理を追加
                }
                .foregroundColor(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.all)
                .frame(height: 60.0)
                .background(.btn)
                .cornerRadius(50.0)
            }.padding()
            
        }
    }
}

#Preview {
    LoginView()
}
