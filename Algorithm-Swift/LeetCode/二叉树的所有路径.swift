//
//  二叉树的所有路径.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二叉树的所有路径 {
    
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        
        if root == nil {
            return []
        } else if root?.left == nil && root?.right == nil {
            return ["\(root!.val)"]
        }
        
        var paths = [String]()
        if root?.left != nil {
            for path in binaryTreePaths(root?.left) {
                paths.append("\(root!.val)" + "->" + path)
            }
        }
        if root?.right != nil {
            for path in binaryTreePaths(root?.right) {
                paths.append("\(root!.val)" + "->" + path)
            }
        }
        
        return paths
    }
    
}
