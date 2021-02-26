//
//  Versin.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation

// https://www.abibliadigital.com.br/api/versions
// return all Bible versions and number os verses

struct Versions:Codable {
    let version:String
    let verses:Int
}
