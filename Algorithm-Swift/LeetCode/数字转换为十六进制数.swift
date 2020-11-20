//
//  数字转换为十六进制数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 数字转换为十六进制数 {
    
    func toHex(_ num: Int) -> String {
        
        if num == 0 {
            return "0"
        }
        
        let hexString = [
            10: "a",
            11: "b",
            12: "c",
            13: "d",
            14: "e",
            15: "f"
        ]
        
        var num = num
        let mask = 15
        var result = ""
        
        while num != 0 && result.count != 8 {
            let tmp = num & mask
            result = (hexString[tmp] ?? "\(tmp)") + result
            num >>= 4
        }
     
        return result
    }
    
}
