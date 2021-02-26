//
//  Book.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation



struct Book:Codable {
    let abbrev:[String:String]
    let author:String
    let chapters:Int
    let group:String
    let name:String
    let testament:String
    let comment:String
}

