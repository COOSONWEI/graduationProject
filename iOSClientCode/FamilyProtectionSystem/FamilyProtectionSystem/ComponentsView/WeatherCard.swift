//
//  WeatherCard.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

//天气显示
struct WeatherCard: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color("MainColor"))
                .frame(height: 178)
                .overlay {
                    HStack(alignment:.center){
                        VStack(alignment:.leading,spacing: 8){
                            
                            //地址
                            Text("上海市，徐汇区")
                                .font(.system(size:10))
                                .foregroundStyle(.white)
            
                            //天气情况
                          Text("小雨")
                                .font(.system( size:20,design: .rounded))
                                .bold()
                                .foregroundStyle(.white)
                                //室外温度
                            
                            Text("将温度降低到16°C需要花费10元的电费")
                                .font(.system(size: 12,design: .rounded))
                                .foregroundStyle(.white)
                            Text("18°C")
                                .font(.system(size:16,design: .rounded))
                                .bold()
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                        
                        Image("Rain")
                            .resizable()
                            .frame(width: 128, height: 126)
                            .aspectRatio(contentMode: .fit)
                            
                    }
                    .padding()
                }
        }
    }
}

#Preview {
    WeatherCard()
}
