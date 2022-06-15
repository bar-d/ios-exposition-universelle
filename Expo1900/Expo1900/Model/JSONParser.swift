//
//  JSONParser.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import Foundation
import UIKit
struct JSONParser {
    func parseExpoInformation() throws -> ExpoInformation {
        guard let data = NSDataAsset(name: "exposition_universelle_1900")?.data else { throw ParseError.unknown }
        guard let decodedData = try? JSONDecoder().decode(ExpoInformation.self, from: data) else { throw ParseError.unknown  }
        return decodedData
    }
    
    func parseEntryList() throws -> [EntryList] {
        guard let data = NSDataAsset(name: "items")?.data else { throw ParseError.unknown }
        guard let decodedData = try? JSONDecoder().decode([EntryList].self, from: data) else { throw ParseError.unknown  }
        return decodedData
    }
}
