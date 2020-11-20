//
//  二叉树的最大深度.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二叉树的最大深度 {
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        var depth = 0
        
        let left = maxDepth(root?.left)
        let right = maxDepth(root?.right)
        
        depth += max(left, right) + 1
        
        return depth
    }
    
}
