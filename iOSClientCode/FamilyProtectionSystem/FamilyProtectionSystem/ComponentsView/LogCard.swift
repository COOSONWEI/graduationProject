//
//  LogCard.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/6.
//

import SwiftUI



struct LogCard: View {
    var imageName: String
    var date: Date
    var title: String = "传感器打开"
    var detial: String = "该系统日志记录了您对该传感器的一些操作，譬如数据的读取或者后台数据的修改等操作"
    var body: some View {
        HStack(alignment:.top,spacing: 16){
            
            ZStack{
                Circle()
                    .foregroundStyle(Color("AlertBGColor"))
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 24)
                
            }
            .frame(width: 40, height: 40)
            
            VStack(alignment:.leading){
                Text(date.string())
                    .font(.system(size: 10,design: .rounded))
                    .foregroundStyle(Color("Gray50"))
                    
                Text(title)
                    .font(.system(size: 14,design: .rounded))
                    .bold()
                    .foregroundStyle(Color("AlertTitleColor"))
                    .padding(.top,4)
                
                Text(detial)
                    .font(.system(size: 12))
                    .foregroundStyle(Color("AlertDetialColor"))
                    .padding(.top,8)
            }
        }
    }
}

#Preview {
    LogCard(imageName: "fireSensor", date: diyDate(specificDate: "2024-3-28 12:30:00"))
}
