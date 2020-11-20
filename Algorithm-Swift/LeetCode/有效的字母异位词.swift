//
//  有效的字母异位词.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 有效的字母异位词 {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var counter = [Int](repeating: 0, count: 26)
        
        for i in 0 ..< s.count {
            let char = s[s.index(s.startIndex, offsetBy: i)]
            var numberFromC = 0
            for scalar in String(char).unicodeScalars {
                numberFromC = Int(scalar.value)
            }
            counter[numberFromC - 97] += 1
            
            let char2 = t[t.index(t.startIndex, offsetBy: i)]
            var numberFromC2 = 0
            for scalar in String(char2).unicodeScalars {
                numberFromC2 = Int(scalar.value)
            }
            counter[numberFromC2 - 97] -= 1
        }
        
        for i in counter {
            if i != 0 {
                return false
            }
        }
        
        return true
    }
    
}
