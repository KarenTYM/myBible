//
//  Verses.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation

// https://www.abibliadigital.com.br/api/verses/:version/:abbrev/:chapter/:number
// return a verse of a chapter

// https://www.abibliadigital.com.br/api/verses/:version/random
// return a random verse from a chapter

// https://www.abibliadigital.com.br/api/verses/:version/:abbrev/random
// return a random verse from a specific book

struct Verse:Codable {
    let book:[BookChapter]
    let chapter:Int
    let number:Int
    let text:String
}


/*
 struct BookChapter:Codable {
     let abbrev:[String:String]
     let name:String
     let author:String
     let group:String
     let version:String
 }
 */

