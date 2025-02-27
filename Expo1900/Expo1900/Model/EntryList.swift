//
//  EntryList.swift
//  Expo1900
//
//  Created by unchain, bard on 2022/06/13.
//

struct EntryList: Codable {
    let name: String
    let imageName: String
    let shortDescription: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageName = "image_name"
        case shortDescription = "short_desc"
        case description = "desc"
    }
}
