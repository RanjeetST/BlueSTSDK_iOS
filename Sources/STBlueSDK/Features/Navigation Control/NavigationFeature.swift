//
//  NavigationFeature.swift
//  ST RobKit App
//
//  Created by Ranjeet Singh on 09/08/24.
//

import Foundation
import STBlueSDK

public class NavigationFeature: BaseFeature<NavigationData> {
    
    let packetLength = 1
    
    public override func extractData<T>(with timestamp: UInt64, data: Data, offset: Int) -> FeatureExtractDataResult<T> {
        if data.count - offset < packetLength {
            return (FeatureSample(with: timestamp, data: data as? T , rawData: data), 0)
        }
        
        let parsedData = NavigationData(with: data, offset: offset)
        
        return (FeatureSample(with: timestamp, data: parsedData as? T, rawData: data), packetLength)
    }

    public override func parse(commandResponse response: FeatureCommandResponse) ->
        FeatureCommandResponse {
            return response
    }
}
