//
//  环形链表.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 环形链表 {
    func hasCycle(_ head: ListNode?) -> Bool {
        
        if head?.next == nil {
            return false
        }
        
        var p = head
        var q = head?.next
        while q != nil {
            if p !== q {
                p = p?.next
                q = q?.next?.next
            } else {
                return true
            }
        }
        
        return false
    }
}

