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
    
    var body: some View {
        
        ZStack {
            // 全体の背景カラー
            // Color.yellow.ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                TextField("email address", text: $email)
                SecureField("password", text: $password)
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    // 後ほど処理を追加
                }
            }.padding()
            
        }
    }
}

#Preview {
    LoginView()
}
