//
//  ShareView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/10/05.
//

import SwiftUI

struct ShareView: View {
    
    var body: some View {
        
        // スクロール機能の実装とスクロールバーの非表示
        ScrollView(showsIndicators: false) {
            
            // 各投稿コンテンツ
            Grid {
                
                ForEach(0..<20) { i in
                    // 一番上の投稿は上線を付与する
                    if (i == 0) {
                        Divider()
                    }
                    // 投稿をカード形式で表示
                    GridRow {
                        ShareContent()
                    }
                    Divider()
                }
            }
        }
    }
}

#Preview {
    ShareView()
}
