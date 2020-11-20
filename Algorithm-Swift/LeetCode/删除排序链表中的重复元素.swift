//
//  删除排序链表中的重复元素.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 删除排序链表中的重复元素 {
    
    // 1->1->1->2->3->3
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        let result = head
        var head = head
        
        while true {
            
            if head?.val == head?.next?.val {
                head?.next = head?.next?.next
            } else {
                head = head?.next
                if (head == nil) {
                    break
                }
            }
            
        }
        
        return result
    }
    
}
