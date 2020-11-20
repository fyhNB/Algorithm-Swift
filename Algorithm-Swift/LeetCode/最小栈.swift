//
//   最小栈.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 最小栈 {
    
    var stack = [Int]()
    var minStack = [Int]()
    
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        stack.append(x)
        
        if let min = minStack.last {
            if x <= min {
                minStack.append(x)
            }
        } else {
            minStack.append(x)
        }
    }
    
    func pop() {
        let poped = stack.removeLast()
        if let min = minStack.last, poped <= min {
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
    
}
