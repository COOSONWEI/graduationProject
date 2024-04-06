//
//  MenuBarView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

struct MenuBarView: View {
   
    var body: some View {
        HStack {
            //个人头像
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
                .clipShape(.circle)
            VStack(alignment: .leading){
                Text("您好, WeiKKXin")
                    .font(.system(.headline,design: .rounded))
                    .fontWeight(.bold)
                    
                Text("5 设备 正在运行")
                    .font(.system(.subheadline,design: .rounded))

            }
            .padding(.leading)
            
            Spacer()
            
            //聊天机器人按钮
            Button(action: {
                
            }, label: {
                Image("Bot")
                    .resizable()
                    .frame(width: 56,height: 56)
            })
           
            
                
        }
        .frame(height: 56)
        .padding()
    }
}

#Preview {
    MenuBarView()
}
