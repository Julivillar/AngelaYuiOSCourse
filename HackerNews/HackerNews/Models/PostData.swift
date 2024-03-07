//
//  FrontPageModel.swift
//  HackerNews
//
//  Created by Julian Villar on 14/8/23.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
