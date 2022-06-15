//
//  error.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import Foundation

enum ParseError: LocalizedError {
    case unknown
    
    var description: String {
        switch self {
        case .unknown:
            return NSLocalizedString("fuck", comment: "asdfsaf")
        }
    }
    
        
}
