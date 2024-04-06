//
//  AlertType.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/4/5.
//

import Foundation

enum AlertType: String {
    case fireAlert = "火焰检测警报"
    case smokeAlert = "烟雾检测警报"
    case temperatureAlert = "温湿度检测警报"
    case doorOpenAlert = "门窗检测警报"
    
    enum AlertDetial: String {
        case fireAlertDetial = "检测到了明火，系统发送此警报，请您确保人身安全；系统已做出了一定的安全防范措施，还请确认火源，避免出现伤亡。"
        case smokeAlertDetial = "检测到可燃气体和浓烟，请检测家中有无燃气泄漏或东西燃烧；系统已经做出相应措施，还请您再次确保人身安全。"
        case temperatureAlertDetial = "检测到家中温度过高，系统以为您开启风扇，进行散热处理。"
        case doorOpentAlert = "检测到家中窗门被强行打开！系统已发出警报，还请您确认家中安全，若发现意外情况，请及时报警。"
    }
}
