//
//  相同的树.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 相同的树 {

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil {
            return true
        }
        
        if p == nil || q == nil {
            return false
        }
        
        if p?.val != q?.val {
            return false
        }
        
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
        
    }
    
}
