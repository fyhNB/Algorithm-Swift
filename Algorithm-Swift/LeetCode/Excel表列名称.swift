//
//  Excel表列名称.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class Excel表列名称 {
    
    func convertToTitle(_ n: Int) -> String {
        
        if n <= 26 {
            return String(Character(UnicodeScalar(n + 64)!))
        }
                
        let current = n % 26    
        let remain = n / 26
        if current == 0 {
            return convertToTitle(remain - 1) + String(Character(UnicodeScalar(current + 26 + 64)!))
        }
        return convertToTitle(remain) + String(Character(UnicodeScalar(current + 64)!))
        
    }
    
}
