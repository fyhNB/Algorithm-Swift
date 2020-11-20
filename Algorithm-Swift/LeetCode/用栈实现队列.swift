//
//  用栈实现队列.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 用栈实现队列 {
    
    var stack = FYHStack<Int>()
    var stack2 = FYHStack<Int>()
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        stack.push(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        while !stack.isEmpty() {
            stack2.push(stack.pop()!)
        }
        let result = stack2.pop()!
        
        while !stack2.isEmpty() {
            stack.push(stack2.pop()!)
        }
        
        return result
    }
    
    /** Get the front element. */
    func peek() -> Int {
        while !stack.isEmpty() {
            stack2.push(stack.pop()!)
        }
        let result = stack2.pop()!
        stack2.push(result)
        
        while !stack2.isEmpty() {
            stack.push(stack2.pop()!)
        }
        
        return result
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return stack.isEmpty()
    }
    
}
