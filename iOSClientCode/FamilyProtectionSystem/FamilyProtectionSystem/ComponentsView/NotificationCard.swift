//
//  NotificationCard.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import SwiftUI

struct NotificationCard: View {
    var date = Date()
    var imageName: String
    var alertType: AlertType
    var detialText: AlertType.AlertDetial
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
                Text(Date.tody.string())
                    .font(.system(size: 10,design: .rounded))
                    .foregroundStyle(Color("Gray50"))
                    
                Text(alertType.rawValue)
                    .font(.system(size: 14,design: .rounded))
                    .bold()
                    .foregroundStyle(Color("AlertTitleColor"))
                    .padding(.top,4)
                
                Text(detialText.rawValue)
                    .font(.system(size: 12))
                    .foregroundStyle(Color("AlertDetialColor"))
                    .padding(.top,8)
            }
           
        }
       
    }
}

#Preview {
    NotificationCard(imageName: "fireAlert", alertType: .fireAlert, detialText: .fireAlertDetial)
}
