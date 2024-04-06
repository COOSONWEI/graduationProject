//
//  FireDetialView.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI
import Charts

//火焰的数据结构
struct FireData: Identifiable {
    var id = UUID().uuidString
    var date: Date
    var detectCount: Double
    init(month: Int,day:Int, detectCount: Double) {
        let calender = Calendar.autoupdatingCurrent
        
        self.date = calender.date(from: DateComponents(year: 2024, month: month,day: day))!
        self.detectCount = detectCount
    }
}

//图表
struct DaliyFireDetectChart: View {
    
    var data: [FireData] = [
        FireData(month: 4, day: 1, detectCount: 1.0),
        FireData(month: 4, day: 2, detectCount: 2.0),
        FireData(month: 4, day: 3, detectCount: 0.0),
        FireData(month: 4, day: 4, detectCount: 1.0),
        FireData(month: 4, day: 5, detectCount: 3.0),
        FireData(month: 4, day: 6, detectCount: 1.0)

    ]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("最近30天数据显示")
                .font(.system(size: 14,design: .rounded))
                .foregroundStyle(Color("NoticeDateTitleColor"))
                
            Chart {
                ForEach(data,id: \.date){
                    BarMark(x: .value("Day", $0.date), y: .value("DetectCount", $0.detectCount))
                        .foregroundStyle(Color("MainColor"))
                        .cornerRadius(10)
                        
                }
               
            }
            .chartScrollableAxes(.horizontal)
           
           
             
        }
      
        
    }
}



//火焰检测传感器详情页面
struct FireDetialView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            //顶部导航栏
            HStack(alignment:.center){
                
                //返回按钮
                Button {
                    dismiss()
                } label: {
                    Image("backBT")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 56, height: 56)

              Spacer()
                Text("火焰传感器")
                    .font(.system(size: 34,design: .rounded))
                    .bold()
                
            
                Spacer()
            
                //设置按钮
                Button(action: {
                    
                }, label: {
                    
                })
                .frame(width: 56, height: 56)
               
            }
           
            Button(action: {
                
            }, label: {
                Image("switch-on")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            })
            .frame(width: 56, height: 56)
            
       
            DaliyFireDetectChart()
                .frame(height: 170)
            
                VStack(alignment:.leading){
                    Text("传感器日志")
                        .font(.system(size: 14,design: .rounded))
                        .foregroundStyle(Color("NoticeDateTitleColor"))
                    ScrollView{
                        VStack(alignment:.leading,spacing: 16){
                            LogCard(imageName: "fireSensor", date: diyDate(specificDate: "2024-4-6 13:24:38"),title: "传感器断开连接",detial: "传感器在2024-4-6 13:24:38正常断开连接,无需担心对设备造成不良影响")
                            LogCard(imageName: "fireSensor", date: diyDate(specificDate: "2024-4-6 10:20:46"),title: "传感器接通电源",detial: "传感器于2024-4-6 10:20:46接通电源，目前工作情况正常")
                            LogCard(imageName: "fireSensor", date: diyDate(specificDate: "2024-4-5 22:30:59"),title: "传感器断开连接",detial: "传感器在2024-4-5 22:30:59，没有正常断开连接，还请检测设备安全情况")
                            LogCard(imageName: "fireSensor", date: diyDate(specificDate: "2024-4-5 22:30:59"),title: "传感器打开",detial: "传感器在2024-4-5 22:30:59被您在手机上开启了工作电源，目前设备运行状态正常")
                            LogCard(imageName: "fireSensor", date: diyDate())
                        }
                       
                      
                    }
                    
                }
            
           
            
           Spacer()
            
        }
        
    }
}

#Preview {
    FireDetialView()
}
