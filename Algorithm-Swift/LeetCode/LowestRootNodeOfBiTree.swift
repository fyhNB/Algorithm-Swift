//
//  LowestRootNodeOfBiTree.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation


class LowestRootNodeOfBiTree {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {

        if root == nil || root === p || root === q {
            return root
        }
        
        let left = lowestCommonAncestor(root!.left, p, q)
        let right = lowestCommonAncestor(root!.right, p, q)
        
        if left != nil && right != nil {
            return root
        }
        
        return left == nil ? right : left
        
    }
}
