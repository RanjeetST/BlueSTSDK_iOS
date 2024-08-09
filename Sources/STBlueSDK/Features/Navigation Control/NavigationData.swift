//
//  NavigationData.swift
//  ST RobKit App
//
//  Created by Ranjeet Singh on 09/08/24.
//

import Foundation
import STBlueSDK

public struct NavigationData {
    
    public let status: FeatureField<UInt8>
    
    init(with data: Data, offset: Int) {
        
        let status = data.extractUInt8(fromOffset: offset)
        
        self.status = FeatureField<UInt8>(name: "Status",
                                          uom: nil,
                                          min: 0,
                                          max: UInt8.max,
                                          value: status)
    }
}

extension NavigationData: CustomStringConvertible {
    public var description: String {
        
        let status = status.value ?? 0
        
        return String(format: "Status: \(status)")
    }
}

extension NavigationData: Loggable {
    public var logHeader: String {
        "\(status.logHeader)"
    }
    
    public var logValue: String {
        "\(status.logValue)"
    }
}
