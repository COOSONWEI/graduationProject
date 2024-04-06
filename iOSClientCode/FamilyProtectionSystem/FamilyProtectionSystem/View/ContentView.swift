//
//  ContentView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

enum SelectedView {
    case home
    case energy
    case addSensor
    case notice
    case profile
}

struct ContentView: View {
    
    @State var selectView: SelectedView = .home
    
    var body: some View {
        
        ZStack{
            switch selectView {
            case .home:
                HomeView()
            case .energy:
                Text("energy")
            case .addSensor:
                Text("add")
            case .notice:
                NotificationView()
            case .profile:
                Text("个人中心")
            }
            VStack{
                Spacer()
                NavigationBarView(selectView: $selectView)
                    .padding(.bottom,24)
            }
            .padding(.leading)
            .padding(.trailing)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
