//
//  合并两个有序链表.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/14.
//  Copyright © 2020 方昱恒. All rights reserved.
//


public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
    public class func linkListByArray(_ arr :[Int]) -> ListNode? {
        
        if arr.count == 0 {
            return nil
        }
        
        var head = ListNode(arr[0])
        let returnVal = head
        
        for i in 1 ..< arr.count {
            head.next = ListNode(arr[i])
            head = head.next!
        }
        
        return returnVal
    }
    
    public func printLinkList() {
        print(self.val, terminator: " ")
        while next != nil {
            print(next?.val ?? 0, terminator: " ")
            next = next?.next
        }
        print()
    }
    
}
 
class 合并两个有序链表 {
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }
        
        if l1.val < l2.val {
            l1.next = mergeTwoLists(l1.next, l2)
            return l1
        } else {
            l2.next = mergeTwoLists(l2.next, l1)
            return l2
        }
        
    }
    
}
