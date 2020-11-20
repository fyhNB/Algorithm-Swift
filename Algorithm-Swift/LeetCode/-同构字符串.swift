//
//  同构字符串.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 同构字符串 {
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var dict = [Character: Character]()
        var keys = Set<Character>()
                
        for i in 0 ..< s.count {
            let a = s[s.index(s.startIndex, offsetBy: i)]
            let b = t[t.index(t.startIndex, offsetBy: i)]
            if dict[a] == nil {
                if keys.contains(b) {
                    return false
                }
                dict[a] = b
                keys.insert(b)
            } else {
                if dict[a] != b {
                    return false
                }
            }
        }
        
        return true
    }
    
}
