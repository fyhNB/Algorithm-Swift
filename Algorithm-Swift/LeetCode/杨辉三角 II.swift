//
//  杨辉三角 II.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 杨辉三角II {
    
    func getRow(_ rowIndex: Int) -> [Int] {
    
        if rowIndex == 0 {
            return [1]
        } else if rowIndex == 1 {
            return [1, 1]
        }
        
        let last = getRow(rowIndex - 1)
        var new = [1]
        
        for i in 0 ..< last.count - 1 {
            new.append(last[i] + last[i + 1])
        }
        
        new.append(1)
        
        return new
        
    }
    
}
