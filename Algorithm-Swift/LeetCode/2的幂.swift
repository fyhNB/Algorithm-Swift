//
//  2的幂.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class _2的幂 {
    
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n == 0 ? false : (n & -n) == n
    }
    
}
