//
//  BinaryTree.swift
//  StackLayout Calculator
//
//  Created by Sherif on 12/8/18.
//  Copyright © 2018 Lobna. All rights reserved.
//

import Foundation

enum BinaryTree<Element : Comparable> {
    case empty
    indirect case node(value: String, left: BinaryTree<Element>, right: BinaryTree<Element>)
}

extension BinaryTree {
    func addNode(_ newValue:String) -> BinaryTree<Element> {
        switch self {
        case .empty:
            return BinaryTree.node(value: newValue, left: .empty, right: .empty)
        case .node(let value, let left, let right):
            
            if (newValue == "=" || newValue == "+" || newValue == "-" || newValue == "/" || newValue == "*"){
                    return BinaryTree.node(value: value, left: left.addNode(newValue), right: right)
            }else{
                return BinaryTree.node(value: value, left: left, right: right.addNode(newValue))
            }
        }
    }
}
