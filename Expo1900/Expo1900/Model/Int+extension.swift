//
//  Int+extension.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import Foundation

extension Int {
    func formatNumber() -> String? {
        let numberformatter = NumberFormatter()
        numberformatter.numberStyle = .decimal
        
        guard let formattedResult = numberformatter.string(from: self as NSNumber) else { return nil }
        return formattedResult
    }
}
