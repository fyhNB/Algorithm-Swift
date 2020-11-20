//
//  路径总和.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 路径总和 {

    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        
        guard let root = root else { return false }
        
        if root.left == nil && root.right == nil {
            return sum == root.val
        }
        
        return hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val)
    
    }

}
