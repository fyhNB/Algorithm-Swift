//
//  反转字符串中的元音字母.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 反转字符串中的元音字母 {
    
    func reverseVowels(_ s: String) -> String {
        var charArray = Array(s)
        var i = 0
        var j = s.count - 1
        let set = Set([Character("A"), Character("E"), Character("I"), Character("O"), Character("U"), Character("a"), Character("e"), Character("i"), Character("o"), Character("u")])
        
        while i < j {
            if !set.contains(charArray[i]) {
                i += 1
                continue
            }
            if !set.contains(charArray[j]) {
                j -= 1
                continue
            } else {
                let tmp = charArray[i]
                charArray[i] = charArray[j]
                charArray[j] = tmp
                i += 1
                j -= 1
            }
        }
        
        return String(charArray)
    }
    
}
