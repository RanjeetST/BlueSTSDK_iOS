//
//  DriveData.swift
//  ST RobKit App
//
//  Created by Ranjeet Singh on 23/07/24.
//

import Foundation
import UIKit
public enum NavigationType: UInt8, FeatureCommandType, CaseIterable {
    
    case remoteControl = 0x01
    case freeNavigation = 0x02
    case followMe = 0x03

    public var payload: Data? {
        return nil
    }
    
    public var useMask: Bool {
        true // this will be false if extended feature
    }
    
    public func data(with nodeId: UInt8) -> Data {
        Data([rawValue])
    }
}

extension NavigationType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .remoteControl:
            return "Remote Control feature command selected"
        case .freeNavigation:
            return "Free Navigation feature command selected"
        case .followMe:
            return "Follow Me Navigatio feature command selected"

        }
    }
}
