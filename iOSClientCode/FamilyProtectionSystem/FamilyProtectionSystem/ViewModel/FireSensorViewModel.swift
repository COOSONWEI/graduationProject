//
//  FireSensorViewModel.swift
//  FamilyProtectionSystem
//
//  Created by 韦小新 on 2024/5/12.
//

import Foundation

struct GetFireData:Identifiable, Codable {
    var id = UUID().uuidString
    var statues: Int
    var updateTime: String
}

//火焰检测数据
class FireSensorViewModel: ObservableObject {
    //创建数组
    @Published var fireDate:  [FireData] = [ FireData(month: 4, day: 1, detectCount: 1.0),
                                             FireData(month: 4, day: 2, detectCount: 2.0),
                                             FireData(month: 4, day: 3, detectCount: 0.0),
                                             FireData(month: 4, day: 4, detectCount: 1.0),
                                             FireData(month: 4, day: 5, detectCount: 3.0),
                                             FireData(month: 4, day: 6, detectCount: 1.0),
                                             
    ]
    
    func getFireStatues() {
        var timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            // 在这里发送 API 请求并更新数据
            self.fetchData(requestUrl: BasicURL.url+BasicURL.getSensor + "fire")
        }
    }
    
    //获取火焰检测数据
    func fetchData(requestUrl: String) {
            // 创建 URLRequest
        let url = URL(string: requestUrl)!
            let request = URLRequest(url: url)

            // 创建 URLSessionDataTask
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                // 在异步任务完成后处理结果
                if let error = error {
                    print("请求失败: \(error.localizedDescription)")
                    return
                }
                
                //确保收到了API给我们返回值
                guard let response = response as? HTTPURLResponse else { return }
                
                if response.statusCode == 200 {
                    //确保收到的数据没有空值
                    guard let data = data else { return }
                    print("data is = \(data)")  //这边可以打印数据看看有没有收到数据
                    //在主线程中进行数据更新操作
                    DispatchQueue.main.async {
                        do{
                            let decodedCityData = try JSONDecoder().decode(FireData.self, from: data)
                            
                        
                            self.fireDate.append(decodedCityData) 
                            
                        }catch{
                            
                        }
                    }
                }

               
            }

            // 启动任务
            task.resume()
        }
    
    
}
