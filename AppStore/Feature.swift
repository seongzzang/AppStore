//
//  Feature.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/05.
//

import Foundation

struct Feature: Decodable {
    let type : String
    let appName: String
    let description: String
    let imageURL: String
}
