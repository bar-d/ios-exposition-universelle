//
//  ParsingTests.swift
//  ParsingTests
//
//  Created by bard, unchain on 2022/06/15.
//

import XCTest
@testable import Expo1900
class ParsingTests: XCTestCase {
    func test_JSON데이터파일의이름이잘못되었을때_nil값을반환하는지() {
        //given
        let result = NSDataAsset(name: "item")?.data
        
        //when
        
        //then
        XCTAssertNil(result)
    }
    
    func test_JSON데이터를_잘불러오는지() {
        //given
        guard let data = NSDataAsset(name: "items")?.data else { return }
        guard let decodedData = try? JSONDecoder().decode([EntryList].self, from: data) else { return }
        
        //when
        let result = "jikji"
        
        //then
        XCTAssertEqual(result, decodedData.first?.imageName)
    }
    
    func test_() {
        let a = 1231244124
        
        let numberformatter = NumberFormatter()
        numberformatter.numberStyle = .decimal
        
        guard let formattedResult = numberformatter.string(from: a as NSNumber) else { return }
        print(formattedResult)
    }
    
    func test_1() {
        let a = "1231244124"
        let numberformatter = NumberFormatter()
        numberformatter.numberStyle = .decimal
        
        print("ASdf")
        guard let formattedResult = numberformatter.string(for: a) else { return }
        print(formattedResult)
    }
    
    // parse
    func test_2() {
        
        guard let a = try? JSONParser().parseExpoInformation() else { return }
        print(a.location)
        
        guard let b = try? JSONParser().parseEntryList() else { return }
        print(b[0].imageName)
    }
}
