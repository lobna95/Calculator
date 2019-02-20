//
//  Node.swift
//  StackLayout Calculator
//
//  Created by Sherif on 12/8/18.
//  Copyright © 2018 Lobna. All rights reserved.
//

import Foundation

class Node{
    
    var data: String
    var leftNode: Node?
    var rightNode: Node?
    
    init(data: String, leftNode: Node? = nil, rightNode: Node? = nil) {
        self.data = data
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
    
}
