//
//  买卖股票的最佳时机II.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 买卖股票的最佳时机II {
    
    func maxProfit(_ prices: [Int]) -> Int {
        
        var profit = 0
        
        for i in 1 ..< prices.count {
            if prices[i] > prices[i - 1] {
                profit += prices[i] - prices[i - 1]
            }
        }
        
        return profit
    
    }
    
}
