//
//  MurmurView.swift
//  linne
//
// 投稿を呟くためのビューです。
//
//  Created by 阿部大輔 on 2023/12/06.
//

import SwiftUI

struct MurmurView: View {
    var body: some View {
        // 投稿操作を行うためのボタンエリア
        HStack {
            // 投稿画面を閉じるボタン
            Button {
                // 投稿画面を閉じる処理を実装
            } label: {
                Text("キャンセル")
                    .foregroundStyle(.black)
            }
            Spacer()
            // 下書き投稿にするためのボタン
            Button {
                // 投稿画面を閉じる処理を実装
            } label: {
                Text("下書き")
                    .font(.subheadline)
                    .foregroundStyle(.btn)
            }
            // 投稿ボタン
            Button {
                // 投稿画面を閉じる処理を実装
            } label: {
                Text("企画する")
                    .foregroundStyle(.white)
                    .frame(width: 100.0, height: 35.0)
                    .background(.btn)
                    .cornerRadius(30)
                    .padding(.horizontal, 5.0)
            }
        }
        .padding()
        // 投稿コンテンツを入力するエリア
        HStack(alignment: .top) {
            // ユーザーアイコン
            Image("userIcon")
                .resizable()
                .modifier(iconImage())
            TextEditor(text: .constant("企画内容を呟いて仲間を集めよう！"))
        }.padding()
    }
}

#Preview {
    MurmurView()
}
