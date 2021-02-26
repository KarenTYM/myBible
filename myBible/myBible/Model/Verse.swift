//
//  Verses.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation



struct Verse:Codable {
    let book:BookVerse
    let chapter:Int
    let number:Int
    let text:String
//
//    enum CodingKeys:String, CodingKey {
//        case book = "book"
//        case chapter = "chapter"
//        case number = "number"
//        case text = "text"
//    }
}

 struct BookVerse:Codable {
//     let abbrev:[String:String]
     let name:String
//     let author:String
//     let group:String
//     let version:String
//
//    enum CodingKeys:String, CodingKey {
//        case abbrev = "abbrev"
//        case name = "name"
//        case author = "author"
//        case group = "group"
//        case version = "version"
//    }
 }



/*
 {
   "book": {
     "abbrev":{"pt":"gn","en":"gn"},
     "name":"Gênesis",
     "author":"Moisés",
     "group":"Pentateuco",
     "version":"nvi"
   },
   "chapter": 1,
   "number": 1,
   "text": "No princípio Deus criou os céus e a terra."
 }
 */

