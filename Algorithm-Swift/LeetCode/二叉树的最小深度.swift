//
//  二叉树的最小深度.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二叉树的最小深度 {
    
    func minDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        var depth = 0
        
        let left = minDepth(root?.left)
        let right = minDepth(root?.right)
        
        if left == 0 || right == 0 {
            depth = left + right + 1
        } else {
            depth += min(left, right) + 1
        }
        
        return depth
        
    }
    
}

