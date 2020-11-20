//
//  main.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation


fileprivate let tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(2)
tree.left?.left = TreeNode(3)
tree.left?.right = TreeNode(2)
tree.right?.right = TreeNode(3)
tree.left?.left?.left = TreeNode(4)

fileprivate let list0 = ListNode(1)
fileprivate let list1 = ListNode(2)
//[5,6,1,8,4,5]
fileprivate let list2 = ListNode(1)
fileprivate let list3 = ListNode(3)
fileprivate let list4 = ListNode(4)

fileprivate let list5 = ListNode(5)
fileprivate let list6 = ListNode(6)

list0.next = list1
list1.next = list2
//list2.next = list3
//list3.next = list4
//list4.next = list5
//list5.next = list6


print(下一个更大元素I().nextGreaterElement([4,1,2], [1,3,4,2]))
