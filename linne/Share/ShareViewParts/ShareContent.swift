//
//  ShareContent.swift
//  linne
//
//  Created by 阿部大輔 on 2023/12/02.
//

import SwiftUI

struct ShareContent: View {
    var body: some View {
        // アイコンとテキストエリアの位置設定
        HStack(alignment: .top) {
            // アイコンエリア
            HStack {
                // アイコン
                Image("userIcon")
                    .resizable()
                    .modifier(iconImage())
            }
            // テキストエリア
            VStack(alignment: .leading) {
                HStack {
                    // ユーザー名
                    Text("daisuke.abe")
                        .font(.subheadline)
                    // ユーザーID
                    Text("@test_user_1234")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                // 投稿内容
                Text("テスト投稿です。これから自分で入力して、イベントをシェアし、各々で楽しい使い方ができるようにしていきましょう！")
                    .font(.footnote)
            }
            // アイコンエリアとテキストエリアの位置調整
            Spacer()
        }
        .padding(.vertical, 5.0)
        .padding(.leading, 10.0)
    }
}

// アイコン画像
struct iconImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray, lineWidth: 0.5))
            .frame(width: 40, height: 40)
            .cornerRadius(30)
            .padding(.trailing, 10.0)
    }
}

#Preview {
    ShareContent()
}
