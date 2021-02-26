//
//  Books.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation

// https://www.abibliadigital.com.br/api/books
// return list os 66 bible books

struct Books:Codable {
    let abbrev:[String:String]
    let author:String
    let chapters:Int
    let group:String
    let name:String
    let testament:String
}


