//
//  Books.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation

/*
 typealias -> transforma o Books em um [BookDetail]
 
 typealias = permite transformar um "tipo" em um outro "tipo"que já existe no sistema
 
crio um array específico de BookDetail
por ser um array, ela nao tem essa chave "Books" dentro dela
 Quando eu decodifico da APi, ela já traz um array de BookDetail
 ISso tudo porque o Json da API é:
 [
   {
     "abbrev": {"pt":"gn","en":"gn"},
     "author":"Moisés",
     "chapters":50,
     "group":"Pentateuco",
     "name":"Gênesis",
     "testament":"VT"
   },
   {
     "abbrev": {"pt":"ex","en":"ex"},
     "author":"Moisés",
     "chapters":40,
     "group":"Pentateuco",
     "name":"Êxodo",
     "testament":"VT"
   },
   ...
 ]
*/
typealias Books = [BookDetail]

struct BookDetail:Codable {
    let abbrev:Abbrev
    let author:String
    let chapters:Int
    let group:String
    let name:String
    let testament:String
}




