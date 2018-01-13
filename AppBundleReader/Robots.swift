//
//  Robots.swift
//  AppBundleReader
//
//  Created by Kaichi Momose on 2018/01/12.
//  Copyright © 2018 Eliel Gordon. All rights reserved.
//

import Foundation

struct Robot: Decodable {
    let name: String
    let personality: String
    let image: URL
    let phrase: String
    
}
//
//extension Robot: Decodable {
//
//    enum Keys: String, CodingKey {
//        case name
//        case personality
//        case image
//        case phrase
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: Keys.self)
//        let name = try container.decode(String.self, forKey: .name)
//        let personality = try container.decode(String.self, forKey: .personality)
//        let image = try container.decode(URL.self, forKey: .image)
//        let phrase = try container.decode(String.self, forKey: .phrase)
//        self.init(name: name, personality: personality, image: image, phrase: phrase)
//    }
//}

