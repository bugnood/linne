//
//  FloatButton.swift
//  linne
//
//  Created by 阿部大輔 on 2023/10/22.
//

import SwiftUI

struct FloatButton: View {
    
    @State private var show: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    print("test")
                    show = true
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                }).fullScreenCover(isPresented: $show) {
                    // trueになれば下からふわっと表示
                    PostView(isActive: $show)
                }
                .frame(width: 80, height: 80)
                .background(.btn)
                .cornerRadius(50.0)
                .shadow(color: .gray, radius: 3, x: 1, y: 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 25.0))
            }
        }
    }
}

#Preview {
    FloatButton()
}
