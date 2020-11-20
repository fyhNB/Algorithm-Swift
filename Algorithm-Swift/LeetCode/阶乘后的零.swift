//
//  阶乘后的零.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

class 阶乘后的零 {
    
    func trailingZeroes(_ n: Int) -> Int {
        
        var n = n
        var count = 0
        
        while n > 0 {
            count += n / 5
            n /= 5
        }
        
        return count
        
    }
    
}
