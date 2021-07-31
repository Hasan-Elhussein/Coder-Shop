//
//  Product.swift
//  Coder Shop
//
//  Created by Hasan Elhussein on 31.07.2021.
//

import Foundation
class Product{
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
