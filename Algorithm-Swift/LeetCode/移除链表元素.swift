//
//  移除链表元素.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 移除链表元素 {
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var head = head
        var ptr = head
        var pre: ListNode? = ListNode(0)
        pre?.next = ptr
        
        while pre?.next != nil {
            if ptr?.val == val {
                pre?.next = ptr?.next
                if head === ptr {
                    head = head?.next
                }
                ptr = ptr?.next
            } else {
                pre = ptr
                ptr = ptr?.next
            }
        }
        
        return head
    }
    
}
