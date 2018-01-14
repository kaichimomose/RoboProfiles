//
//  Networking.swift
//  AppBundleReader
//
//  Created by Kaichi Momose on 2018/01/12.
//  Copyright © 2018 Eliel Gordon. All rights reserved.
//

import Foundation

//class Networking {
//    let session = URLSession.shared
//
//    func fetch(url: URL, completion: @escaping (Decodable) -> ()) {
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//
//        session.dataTask(with: request) {(data, res, err) in
//            if let data = data {
//                let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
//                if let responseJSON = responseJSON as? [[String: Any]] {
//                    print(responseJSON)
//                }
//                let tripsList = try? JSONDecoder().decode([Trip].self, from: data)
//                guard let aTripsList = tripsList else {return}
//                completion(aTripsList)
//            }
//            if let res = res {
//                print(res)
//            }
//            }.resume()
//    }
//}

