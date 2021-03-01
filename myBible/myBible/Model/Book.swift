//
//  Book.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation



struct Book:Codable {
    let abbrev:Abbrev
    let author:String
    let chapters:Int
    let comment:String
    let group:String
    let name:String
    let testament:String 
}

struct Abbrev:Codable {
    let pt:String
    let en:String
}
/*
 {
   "abbrev":
   {
    "pt":"mt",
    "en":"mt"
   },
   "author":"Mateus",
   "chapters":28,
   "comment":"",
   "group":"Evangelhos",
   "name":"Mateus",
   "testament":"NT"
 }
 */

