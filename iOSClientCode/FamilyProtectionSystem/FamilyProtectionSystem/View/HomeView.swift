//
//  ContentView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

//首页
struct HomeView: View {
    var body: some View {
        VStack{
            MenuBarView()
            WeatherCard()
        }
        .padding(.leading,20)
        .padding(.trailing,20)
       
    }
}

#Preview {
    HomeView()
}
