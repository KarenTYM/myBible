//
//  Chapter.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation
/*
 {
   "book": {
     "abbrev":{"pt":"gn","en":"gn"},
     "name":"Gênesis",
     "author":"Moisés",
     "group":"Pentateuco",
     "version":"nvi"
   },
   "chapter": {
     "number":1,
     "verses":31
   },
   "verses": [
     {"number": 1,"text":"No princípio Deus criou os céus e a terra."},
     {"number": 2,"text":"Era a terra sem forma e vazia; trevas cobriam a face do abismo, e o Espírito de Deus se movia sobre a face das águas."}
     ...
   ]
 }
 */


struct Chapter:Codable {
    let book:BookChapter
    let chapter:ChapterChapter
    let verse:[VerseChapter]
}


struct BookChapter:Codable {
    let abbrev:[String:String]
    let name:String
    let author:String
    let group:String
    let version:String
}

struct ChapterChapter:Codable {
    let number:Int
    let verse:Int
}

struct VerseChapter:Codable {
    let number:Int
    let text:String
}

