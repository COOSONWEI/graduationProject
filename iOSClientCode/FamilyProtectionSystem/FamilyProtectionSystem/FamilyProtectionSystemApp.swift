//
//  FamilyProtectionSystemApp.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

@main
struct FamilyProtectionSystemApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environment(\.locale, Locale(identifier: "zh_CN")) // 设置语言环境为中文
    }
}
