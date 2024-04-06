//
//  NotificationView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI


struct NotificationView: View {
    
    @State private var showGross = true
    
    @State private var showLivingRoom = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color("BG"))
                .ignoresSafeArea()
            
            ScrollView{
                
                //顶部导航栏
                HStack{
                    
                    //返回按钮
                    Button {
                        
                    } label: {
                        Image("backBT")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    .frame(width: 56, height: 56)

                    Spacer()
                    Text("通知")
                        .font(.system(size: 34,design: .rounded))
                        .bold()
                    
                    
                    Spacer()
                    
                    //设置按钮
                    Button(action: {
                        
                    }, label: {
                        Image("settingBT")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    })
                    .frame(width: 56, height: 56)
                }
                
                HStack(spacing:12){
                    SwitchButton(name: "总表", deviceNumber: 3, action: {
                        self.showGross = true
                        
                        self.showLivingRoom = false
                    }, show: $showGross)
                    
                    SwitchButton(name: "客厅", deviceNumber: 2, action: {
                        self.showLivingRoom = true
                        
                        self.showGross = false
                    }, show: $showLivingRoom)
                    
                    Spacer()
                    
                }
                
                VStack(alignment:.leading,spacing: 24){
                    //通知栏
                    Text("今天")
                        .font(.system(size:14,design: .rounded))
                        .fontWeight(.medium)
                        .foregroundStyle(Color("NoticeDateTitleColor"))
                    NotificationCard(imageName: "fireAlert", alertType: .fireAlert, detialText: .fireAlertDetial)
                    
                    NotificationCard(imageName: "smokeAlert", alertType: .smokeAlert, detialText: .smokeAlertDetial)
                    
                    NotificationCard(imageName: "temperatureAlert", alertType: .temperatureAlert, detialText: .temperatureAlertDetial)
                }
                .padding(.top,24)
                
               
            }
            .padding(.leading)
            .padding(.trailing)
            .scrollIndicators(.hidden, axes: .vertical)
        }
       
    }
}

#Preview {
    NotificationView()
}
