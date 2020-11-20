//
//  Nim 游戏.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class Nim游戏 {
    
    func canWinNim(_ n: Int) -> Bool {
        if n <= 3 {
            return true
        } else if 3 < n && n <= 6 {
            return false
        }
        
        return canWinNim(n - 1) || canWinNim(n - 2) || canWinNim(n - 3)
    }
    
}
