//
//  岛屿的周长.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 岛屿的周长 {
    
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var nGrid = [[Int]](repeating: [Int](repeating: 0, count: grid[0].count + 2), count: grid.count + 2)
        
        for i in 0 ..< nGrid.count {
            for j in 0 ..< nGrid[i].count {
                if i == 0 || i == nGrid.count - 1 || j == 0 || j == nGrid[i].count - 1 {
                    nGrid[i][j] = 0
                } else {
                    nGrid[i][j] = grid[i - 1][j - 1]
                }
            }
        }
        
        var res = 0
        for i in 0 ..< nGrid.count {
            for j in 0 ..< nGrid[i].count {
                if nGrid[i][j] == 1 {
                    if nGrid[i - 1][j] == 0 {
                        res += 1
                    }
                    if nGrid[i][j - 1] == 0 {
                        res += 1
                    }
                    if nGrid[i + 1][j] == 0 {
                        res += 1
                    }
                    if nGrid[i][j + 1] == 0 {
                        res += 1
                    }
                }
            }
        }
        
        return res
    }
    
}
