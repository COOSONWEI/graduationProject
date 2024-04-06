//
//  NavigationBarView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

struct NavigationBarView: View {
    
    @Binding var selectView: SelectedView
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 96)
                
            
            HStack(alignment:.center,spacing: 24){
                //首页
                Button(action: {
                    selectView = .home
                }, label: {
                    Image(selectView == .home ? "home-on" : "home-off" )
                })
                
                //能耗展示
                Button(action: {
                    selectView = .energy
                }, label: {
                    Image(selectView == .energy ? "flash-on" : "flash-off")
                })
                
                //添加设备
                Button(action: {
                    selectView = .addSensor
                }, label: {
                   Image("addBT")
                })
                
                
                //通知
                Button(action: {
                    selectView = .notice
                }, label: {
                    Image(selectView == .notice ? "Notification-on" : "Notification-off")
                })
                
                //个人中心
                Button(action: {
                    selectView = .profile
                }, label: {
                    Image( selectView == .profile ? "profile-on" : "profile-off")
                })
            }
        }
        .frame(height: 75)
    }
}

#Preview {
    NavigationBarView(selectView: .constant(.home))
}
