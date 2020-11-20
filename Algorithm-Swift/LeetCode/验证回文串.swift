//
//  验证回文串.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 验证回文串 {

    func isPalindrome(_ s: String) -> Bool {
        
        let array = Array(s.lowercased())
        var tmpArray = [String.Element]()
        
        for i in array {
            if i.isNumber || i.isLetter {
                tmpArray.append(i)
            }
        }
        
        let reversed = tmpArray.reversed()
        
        return tmpArray.elementsEqual(reversed)
        
    }

}
