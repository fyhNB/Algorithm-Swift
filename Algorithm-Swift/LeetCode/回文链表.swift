//
//  回文链表.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 回文链表 {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var stack = FYHStack<ListNode?>()
        
        var ptr = head
        while ptr != nil {
            stack.push(ptr)
            ptr = ptr?.next
        }
        
        ptr = head
        
        while ptr != nil {
            if ptr?.val != stack.pop()??.val {
                return false
            }
            ptr = ptr?.next
        }
        
        return true
    }
}
