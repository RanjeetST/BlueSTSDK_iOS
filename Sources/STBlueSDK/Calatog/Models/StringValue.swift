//
//  StringValue.swift
//  
//  Copyright (c) 2022 STMicroelectronics.
//  All rights reserved.
//
//  This software is licensed under terms that can be found in the LICENSE file in
//  the root directory of this software component.
//  If no LICENSE file comes with this software, it is provided AS-IS.
//

import Foundation

public struct StringValue {
    public let type: String?
    public let displayName: String?
    public let comment: String?
    public let value: Int?
}

extension StringValue: Codable {
    enum CodingKeys: String, CodingKey {
        case type
        case displayName = "display_name"
        case comment
        case value
    }
}
