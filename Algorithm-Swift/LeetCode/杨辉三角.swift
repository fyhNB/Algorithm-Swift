//
//  杨辉三角.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 杨辉三角 {
    
    func generate(_ numRows: Int) -> [[Int]] {
     
        if numRows == 0 {
            return []
        }
        
        if numRows == 1 {
            return [[1]]
        } else if numRows == 2 {
            return [[1], [1, 1]]
        }
        
        var last = generate(numRows - 1)
        
        var new = [1]
        for i in 0 ..< last[numRows - 2].count - 1 {
            new.append(last[numRows - 2][i] + last[numRows - 2][i + 1])
        }
        new.append(1)
        
        last.append(new)
        
        return last
        
    }
    
}
