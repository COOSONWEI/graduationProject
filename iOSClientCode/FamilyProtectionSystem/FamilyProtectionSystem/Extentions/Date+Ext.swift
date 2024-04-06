//
//  Date+Ext.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import Foundation
extension Date {
    
    static var tody: Date {
        return Date()
    }
    
    func string(with format: String = "yyyy 年 M 月 d 日 HH:mm:ss") -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
    
}

func diyDate(specificDate: String = "2024-3-28 12:30:00") -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

    let date = dateFormatter.date(from: specificDate)!
    
    return date
    
}
