//
//  翻转二叉树.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 翻转二叉树 {
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        invertTree_IMPL(root)
        return root
    }
    
    private func invertTree_IMPL(_ root: TreeNode?) {
        if root == nil {
            return
        }
        
        let tmp = root?.left
        root?.left = root?.right
        root?.right = tmp
        
        invertTree_IMPL(root?.left)
        invertTree_IMPL(root?.right)
    }
    
}
