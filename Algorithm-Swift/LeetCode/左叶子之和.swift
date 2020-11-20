//
//  左叶子之和.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/27.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 左叶子之和 {
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        var result = 0
        
        if root?.left != nil && root?.left?.left == nil && root?.left?.right == nil {
            result += (root?.left?.val ?? 0)
        }
        
        result += sumOfLeftLeaves(root?.left)
        result += sumOfLeftLeaves(root?.right)
        
        return result
    }
    
}
