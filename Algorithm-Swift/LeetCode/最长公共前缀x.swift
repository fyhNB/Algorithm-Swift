//
//  最长公共前缀.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/13.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 最长公共前缀 {
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var result = ""

        var tmpPre = ""
        
        if strs.count == 0 {
            return result
        }
        
        if strs.count == 1 {
            return strs[0]
        }
        
        for i in 0 ..< strs[0].count {
            tmpPre = String(strs[0][...strs[0].index(strs[0].startIndex, offsetBy: i)])
            
            for j in 1 ..< strs.count {
                if (i >= strs.count || i >= strs[j].count) {
                    continue
                }
                if String(strs[j][...strs[j].index(strs[j].startIndex, offsetBy: i)]) == tmpPre {
                    if j == strs.count - 1 {
                        result = tmpPre
                    }
                    continue
                } else {
                    break
                }
            }
        }
        
        return result
    }
    
}
