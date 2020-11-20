//
//  整数反转.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/13.
//  Copyright © 2020 方昱恒. All rights reserved.
//


// 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。

class 整数反转 {
    
    func reverse(_ x: Int) -> Int {
            
        var x = x
        var result: Int = 0
        
        while x != 0 {
            let num = x % 10
            x = x / 10
            result = result * 10 + num
        }
        
        if result > Int32.max || result < Int32.min {
            result = 0
        }
        
        return result
    }
    
}
