//
//  对称二叉树.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 对称二叉树 {
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(root, root)
    }
    
    private func isMirror(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil {
            return true
        }
        
        if p == nil || q == nil {
            return false
        }
        
        if p?.val != q?.val {
            return false
        }
        
        return isMirror(p?.left, q?.right) && isMirror(p?.right, q?.left)
        
    }
    
}
