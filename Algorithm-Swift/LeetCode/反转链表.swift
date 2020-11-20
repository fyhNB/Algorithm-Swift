//
//  反转链表.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 反转链表 {
    
//    func reverseList(_ head: ListNode?) -> ListNode? {
//
//        guard var indicator = head else { return nil }
//
//        var last: ListNode
//
//        while indicator.next != nil {
//            indicator = indicator.next!
//        }
//        last = indicator
//
//        var looking = head!
//        var newLink = ListNode(last.val)
//        let result = newLink
//
//        while last !== head {
//            while looking.next !== last {
//                looking = looking.next!
//            }
//            last = looking
//            newLink.next = ListNode(last.val)
//            newLink = newLink.next!
//            looking = head!
//        }
//
//        return result
//
//    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {

        var tmp: ListNode?
        var pre: ListNode? = nil
        var cur = head
        
        while cur?.next != nil {
            tmp = cur?.next
            cur?.next = pre
            pre = cur
            cur = tmp
        }
        
        cur?.next = pre
        
        return cur
        
    }
    
}
