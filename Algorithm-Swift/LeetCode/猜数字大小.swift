//
//  猜数字大小.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class 猜数字大小_GuessGame {
    func guess(_ num: Int) -> Int {
        return 0
    }
}

class 猜数字大小 : 猜数字大小_GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var left = 0
        var right = n

        while left <= right {
            let myAns = (left + right) / 2
            switch guess(myAns) {
                case -1:
                    right = myAns - 1
                case 0:
                    return myAns
                case 1:
                    left = myAns + 1
                default:
                    break
            }
        }
        
        return left
    }
}
