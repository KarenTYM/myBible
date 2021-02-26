//
//  Books.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation



struct Books:Codable {
    let abbrev:[String:String]
    let author:String
    let chapters:Int
    let group:String
    let name:String
    let testament:String
}


