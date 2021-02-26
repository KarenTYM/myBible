//
//  Chapter.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation

// https://www.abibliadigital.com.br/api/verses/:version/:abbrev/:chapter
// return all verses and details of a chapter

struct Chapter:Codable {
    let book:[BookChapter]
}


struct BookChapter:Codable {
    let abbrev:[String:String]
    let name:String
    let author:String
    let group:String
    let version:String
}

