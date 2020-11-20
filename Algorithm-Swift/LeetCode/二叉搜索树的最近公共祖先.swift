//
//  二叉搜索树的最近公共祖先.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二叉搜索树的最近公共祖先 {
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        if p!.val >= root!.val && q!.val <= root!.val || q!.val >= root!.val && p!.val <= root!.val {
            return root
        } else if p!.val < root!.val && q!.val < root!.val  {
            return lowestCommonAncestor(root?.left, p, q)
        } else {
            return lowestCommonAncestor(root?.right, p, q)
        }
        
    }
    
}
