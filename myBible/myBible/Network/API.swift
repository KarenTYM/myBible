//
//  API.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import Foundation
import Alamofire

// Books -> https://www.abibliadigital.com.br/api/books
// return list os 66 bible books
// Book-> https://www.abibliadigital.com.br/api/books/:abbrev
// return details of a Bible book
// Chapter -> https://www.abibliadigital.com.br/api/verses/:version/:abbrev/:chapter
// return all verses and details of a chapter
// Verse -> https://www.abibliadigital.com.br/api/verses/:version/:abbrev/:chapter/:number
// return a verse of a chapter
// Verse -> https://www.abibliadigital.com.br/api/verses/:version/random
// return a random verse from a chapter
// Verse -> https://www.abibliadigital.com.br/api/verses/:version/:abbrev/random
// return a random verse from a specific book
// Versions -> https://www.abibliadigital.com.br/api/versions
// return all Bible versions and number os verses


private let baseURL = "https://www.abibliadigital.com.br/api/"

class API {
    // MARK: - getBooks
    class func getBooks(onSuccess: @escaping (Books) -> Void) {
        let urlStr = "\(baseURL)books"
        guard let url = URL(string: urlStr) else {fatalError("----Unable to get url")}
        
        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data else {fatalError("----Unable to parse data from api")}
                guard let books = try? JSONDecoder().decode(Books.self, from: data) else {fatalError("----Unable to parse data in to Json")}
                DispatchQueue.main.async {
                    onSuccess(books)
                }
            case .failure(let error):
                print("ERROR---\(error.localizedDescription)")
            }
        }
    }
    
    
    // MARK: - getBookDetails
    class func getBookDetails(abbrev:String, onSuccess: @escaping (Book) -> Void) {
        let urlStr = "\(baseURL)books/\(abbrev)"
        guard let url = URL(string: urlStr) else {fatalError("----Unable fo get url")}
        
        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data else {fatalError("----Unable to parse data from api")}
                guard let bookDetail = try? JSONDecoder().decode(Book.self, from: data) else {fatalError("----Unable to parse data in to Json")}
                DispatchQueue.main.async {
                    onSuccess(bookDetail)
                }
            case .failure(let error):
                print("ERROR---\(error.localizedDescription)")
            }
        }
    }
    
    
    // MARK: - getVerses
    class func getVerses(abbrev:String, chapter: String, onSuccess: @escaping (Chapter) -> Void) {
        let urlString = "\(baseURL)verses/nvi/\(abbrev)/\(chapter)"
        guard let url = URL(string: urlString) else {fatalError("----Unable to get url")}
        
        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data else {fatalError("----Unable to parse data from api")}
                guard let chapter = try? JSONDecoder().decode(Chapter.self, from: data) else {fatalError("----Unable to parse data in to Json")}
                DispatchQueue.main.async {
                    onSuccess(chapter)
                }
            case .failure(let error):
                print("ERROR---\(error.localizedDescription)")
            }
        }
    }
    
    
    // MARK: - getRandomVerse
    class func getRandomVerse(version:String, onSuccess: @escaping (Verse) -> Void) {
//        JSONDecoder().keyDecodingStrategy = .convertFromSnakeCase
        let urlStr = "\(baseURL)verses/\(version)/random"
        guard let url = URL(string: urlStr) else {fatalError("----Unable to get url")}
        
        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data else {fatalError("-----Unable to parse data from api")}
                guard let verse = try? JSONDecoder().decode(Verse.self, from: data) else {fatalError("----Unable to parse data in to Json")}
                DispatchQueue.main.async {
                    onSuccess(verse)
                }
            case .failure(let error):
                print("ERROR---\(error.localizedDescription)")
            }
        }
    }
}



