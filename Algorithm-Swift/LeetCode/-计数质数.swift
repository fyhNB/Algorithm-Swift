//
//  计数质数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


import Foundation

class 计数质数 {
    
    func countPrimes(_ n: Int) -> Int {
        if n < 2 {
            return 0
        }
        
        var count = 0
        var primeMark = [Bool](repeating: true, count: n)
        primeMark[0] = false
        primeMark[1] = false
        
        for i in 2 ..< n {
            if !primeMark[i] {
                continue
            }
            
            if primeMark[i] {
                if !isPrime(i) {
                    primeMark[i] = false
                    var times = 2
                    while i * times < n {
                        primeMark[i * times] = false
                        times += 1
                    }
                }
            }
        }
        
        for flag in primeMark {
            if flag {
                count += 1
            }
        }
        
        return count
    }
    
    
    func isPrime(_ n: Int) -> Bool {
        
        let upper = n / 2 > 2 ? n / 2 : 2
        
        for i in 2 ... upper {
            if n % i == 0 {
                return false
            }
        }
        
        return true
    }
    
}
