//
//  BottomBarData.swift
//  hataluclone
//
//  Created by tomohide katagiri on 2025/08/05.
//

import SwiftUI

// MARK: BottomBarView用のメニュー項目データ

//BottomButton の定義
struct BottomButton: Identifiable {
    let id = UUID()
    let title: String
    let systemImageName: String
}

struct BottomButtonData {
    static let buttons: [BottomButton] = [
        BottomButton(title: "ホーム", systemImageName:"house.fill"),
        BottomButton(title: "トーク", systemImageName: "bubble.left.and.bubble.right.fill"),
        BottomButton(title: "お知らせ", systemImageName: "megaphone.fill"),
        BottomButton(title: "通知", systemImageName: "bell.fill")
    ]
}
