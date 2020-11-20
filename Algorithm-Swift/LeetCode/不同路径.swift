//
//  不同路径.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/16.
//  Copyright © 2020 方昱恒. All rights reserved.
//


/**
 一个机器人位于一个 m x n 网格的左上角 （起始点在下图中标记为“Start” ）。

 机器人每次只能向下或者向右移动一步。机器人试图达到网格的右下角（在下图中标记为“Finish”）。

 问总共有多少条不同的路径？
 */

class 不同路径 {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        if m == 0 || n == 0 {
            return 0
        }
        
        var counts = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
        
        for i in 0 ..< n {
            for j in 0 ..< m {
                if i == 0 {
                    counts[i][j] = 1
                } else if j == 0 {
                    counts[i][j] = 1
                } else {
                    counts[i][j] = counts[i - 1][j] + counts[i][j - 1]
                }
            }
        }
        
        return counts[n - 1][m - 1]
    }
    
}
