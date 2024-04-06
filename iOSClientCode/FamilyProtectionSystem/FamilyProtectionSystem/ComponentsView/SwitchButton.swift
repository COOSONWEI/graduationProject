//
//  SwitchButton.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

struct SwitchButton: View {
    
    //房间的名字
    var name: String
    
    //连接的设备数量
    var deviceNumber: Int
    
    //创建点击的方法
    let action: () -> Void
    //是否选中当前的设备
    @Binding var show:Bool
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 28)
                    .frame(width: show ? 138 : 93, height: 42)
                    .foregroundStyle(show ? Color("MainSecondaryColor") : .white)
                
                Text(deviceNumber == 0 ? name : name + "(\(deviceNumber))")
                    .font(.system(size: 12,design: .rounded))
                    .bold()
                    .foregroundStyle(show ? .white : Color("ButtonOffColor"))
            }
        })
        
    }
}

#Preview {
    SwitchButton(name: "LivingRoom", deviceNumber: 1, action: {
        print("1")
    }, show: .constant(false))
}
