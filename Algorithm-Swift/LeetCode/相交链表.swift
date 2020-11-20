//
//  相交链表.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 相交链表 {
    
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
        guard var ptrA = headA, var ptrB = headB else {
            return nil
        }
        
        while ptrA !== ptrB {
            
            if ptrA.next == nil && ptrB.next == nil && ptrB !== ptrA {
                return nil
            }
            
            ptrA = ptrA.next ?? headB!
            ptrB = ptrB.next ?? headA!
            
        }
        
        return ptrA
    }
    
}
