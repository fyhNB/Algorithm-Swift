//
//  买卖股票的最佳时机.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 买卖股票的最佳时机 {
    
    // 穷举
//    func maxProfit(_ prices: [Int]) -> Int {
//
//        var max = 0
//
//        for buy in 0 ..< prices.count {
//            for sale in buy ..< prices.count {
//                if prices[sale] - prices[buy] > max {
//                    max = prices[sale] - prices[buy]
//                }
//            }
//        }
//
//        return max
//
//    }
    
    
    // DP
    func maxProfit(_ prices: [Int]) -> Int {
        
        if prices.count <= 1 {
            return 0
        }
        
        var minPrice = min(prices[0], prices[1])
        var maxProfit = prices[1] - prices[0] >= 0 ? prices[1] - prices[0] : 0
        
        for i in 2 ..< prices.count {
            maxProfit = max(maxProfit, prices[i] - minPrice)
            if prices[i] < minPrice {
                minPrice = prices[i]
            }
        }
        
        return maxProfit
        
    }
    
}
