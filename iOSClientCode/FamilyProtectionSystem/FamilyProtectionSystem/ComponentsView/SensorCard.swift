//
//  SensorCard.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

struct SensorCard<Content>: View where Content:View {
    //传感器图片名字
    var sensorImgName: String
    //传感器名字
    var sensorName: String
    
    //传感器简介
    var sensorIntroduction: String
    
    //开关动作
    let action: () -> Void
   
    @Binding var toggleSwitch: Bool
    
    @State private var selected = false
    @State  var click = 0
    @State  var scaleCard = false
    @State private var gotoView = false
    let modalContent: () -> Content
    
    var body: some View {
    
         
               
         
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.white)
                        .shadow(radius:1,x: 0,y:1)
                    
                    VStack(alignment:.leading){
                        //图片
                        Image(sensorImgName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32, height: 32)
                            .padding(.bottom,8)
                        //名称
                        Text(sensorName)
                            .font(.system(size: 14))
                            .bold()
                            .foregroundStyle(Color("SensorNameColor"))
                            .padding(.bottom,6)
                        //描述
                        Text(sensorIntroduction)
                            .font(.system(size: 10))
                            .foregroundStyle(Color("Gray70"))
                            .lineLimit(5)
                        Spacer()
                        
                        //开关
                        HStack{
                            Spacer()
                            Button(action: {
                                action()
                            }, label: {
                                Image(toggleSwitch ? "switch-on" : "switch-off")
                            })
                        }
                    }
                    .padding()
                    
                    
                }
                .frame(minHeight: 164, maxHeight: 198)
                .onTapGesture {
                    self.gotoView = true
                }
                .sheet(isPresented: $gotoView, onDismiss: {
                    self.gotoView = false
                }, content: {
                    modalContent()
                })
                
            }

          
            
        }
      


#Preview {
    SensorCard(sensorImgName: "fireSensor", sensorName: "火焰传感器", sensorIntroduction: "目前未发现明火\naf as", action: {
        
    }, toggleSwitch: .constant(false)){
        Text("1")
    }
}
