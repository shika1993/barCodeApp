//
//  Item.swift
//  barCodeApp
//
//  Created by 鹿内翔平 on 2020/12/15.
//

import Foundation

struct Result: Codable {
    let Items:[Items]
}

struct Items: Codable{
    let Item: Item
}

struct Item: Codable {
    let smallImageUrls: [SmallImageUrls]
    let itemName: String
}

struct SmallImageUrls: Codable {
    let imageUrl: String
}
