//
//  单词规律.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 单词规律 {
    
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let slices = s.split(separator: Character(" "))
        
        if pattern.count != slices.count {
            return false
        }
        
        var dict = [Character : Substring]()
        var dict2 = [Substring : Character]()
        
        for i in 0 ..< slices.count {
            let char = pattern[pattern.index(pattern.startIndex, offsetBy: i)]
            if dict[char] == nil {
                dict[char] = slices[i]
            }
            
            if dict2[slices[i]] == nil {
                dict2[slices[i]] = char
            }
            
            if dict[char] != nil {
                if dict[char] != slices[i] {
                    return false
                }
            }
            
            if dict2[slices[i]] != nil {
                if dict2[slices[i]] != char {
                    return false
                }
            }
        }
        
        return true
    }
    
}
