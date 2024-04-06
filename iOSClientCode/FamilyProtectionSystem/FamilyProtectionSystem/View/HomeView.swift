//
//  ContentView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

//首页
struct HomeView: View {
    
    @State private var showLivingRoom = true
    @State private var showKitchenRoom = false
    @State private var showBedRoom = false
    
    var rooms:[String:Int] = ["客厅":4, "厨房":0, "卧室":0]
    
    @State private var fireSensor = false
    @State private var fanSensor = false
    @State private var airQualitySensor = false
    @State private var temperatureAndHumiditySensor = false
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color("BG"))
                .ignoresSafeArea()
            
            VStack{
                ScrollView{
                    VStack(alignment:.center,spacing:24){
                        MenuBarView()
                        WeatherCard()
                        
                        HStack{
                            SwitchButton(name: "客厅", deviceNumber: 4, action: {
                                
                                showBedRoom = false
                                showKitchenRoom = false
                                showLivingRoom = true
                                
                            }, show: $showLivingRoom)
                            SwitchButton(name: "厨房", deviceNumber: 0, action: {
                                showBedRoom = false
                                showKitchenRoom = true
                                showLivingRoom = false
                            }, show: $showKitchenRoom)
                            SwitchButton(name: "卧室", deviceNumber: 1, action: {
                                showBedRoom = true
                                showKitchenRoom = false
                                showLivingRoom = false
                            }, show: $showBedRoom)
                        }
                        
                        Grid(horizontalSpacing: 8) {
                            HStack(alignment:.top){
                                SensorCard(sensorImgName: "fireSensor", sensorName: "火焰传感器", sensorIntroduction: "未检测到明火🔥", action: {
                                    fireSensor.toggle()
                                }, toggleSwitch: $fireSensor){
                                    FireDetialView()
                                        .padding()
                                }
                                
                                SensorCard(sensorImgName: "airQuality", sensorName: "空气质量传感器", sensorIntroduction: "PM2.5: 15μg/m3\nPM10: 30μg/m3\n未检测到有害气体", action: {
                                    fireSensor.toggle()
                                }, toggleSwitch: $fireSensor){
                                    Text("detial")
                                }
                            }
                            
                            HStack(alignment:.top){
                                SensorCard(sensorImgName: "smokeSensor", sensorName: "烟雾传感器", sensorIntroduction: "未检测到烟雾，无需开窗", action: {
                                    fireSensor.toggle()
                                }, toggleSwitch: $fireSensor) {
                                    Text("detial")
                                }
                                
                                SensorCard(sensorImgName: "temperatureAndHumidity", sensorName: "温湿度传感器", sensorIntroduction: "温度: 20°C\n湿度: 32%", action: {
                                    fireSensor.toggle()
                                }, toggleSwitch: $fireSensor) {
                                    Text("detial")
                                }
                            }
                           
                        }
                        
                        Rectangle()
                            .frame(height: 24)
                            .foregroundStyle(Color("BG"))
                    }
                   
                }
                .scrollIndicators(.hidden)
              
              
            }
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,24)
        }
       
       
    }
}

#Preview {
    HomeView()
}
