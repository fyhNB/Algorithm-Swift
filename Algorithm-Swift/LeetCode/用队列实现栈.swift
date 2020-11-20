//
//  用队列实现栈.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class MyStack {
    
    var queue = [Int]()
    var head = -1
    var tail = -1

    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        queue.append(x)
        tail += 1
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        let tmp = tail
        while head + 1 != tmp {
            head += 1
            push(queue[head])
        }
        
        let result = queue[head + 1]
        head += 1
        return result
    }
    
    /** Get the top element. */
    func top() -> Int {
        return queue[tail]
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return head == tail
    }
    
}
