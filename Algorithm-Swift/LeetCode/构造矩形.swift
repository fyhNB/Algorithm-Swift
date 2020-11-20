//
//  构造矩形.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

class 构造矩形 {
    func constructRectangle(_ area: Int) -> [Int] {
        var W = Int(sqrt(Double(area)))
        var L = Int(sqrt(Double(area)))
        
        while W * L != area {
            if W * L < area {
                L += 1
            }
            if W * L > area {
                W -= 1
            }
        }
        
        return[L, W]
    }
}
