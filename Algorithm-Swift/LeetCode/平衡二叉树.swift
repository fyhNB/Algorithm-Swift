//
//  平衡二叉树.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 平衡二叉树 {
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        
        if root == nil {
            return true
        }
        
        if abs(treeDepth(root?.left) - treeDepth(root?.right)) > 1 {
            return false
        }
        
        if !isBalanced(root?.left) {
            return false
        }
        
        if !isBalanced(root?.right) {
            return false
        }
        
        return true
        
    }
    
    private func treeDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        let leftDepth = treeDepth(root?.left)
        let rightDepth = treeDepth(root?.right)
        
        return max(leftDepth, rightDepth) + 1
        
    }
    
}
