//
//  BibliaVC.swift
//  myBible
//
//  Created by Fabio Makihara on 25/02/21.
//

import UIKit

class LivrosVC: UIViewController {

    @IBOutlet weak var livrosTableView: UITableView!
    
    var booksArray:Books?
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configView()
        self.fetchBooks()
    }
    
    
    // MARK: - configView
    private func configView() {
        self.livrosTableView.delegate = self
        self.livrosTableView.dataSource = self
        
        self.livrosTableView.register(UINib(nibName: "LivrosCell", bundle: nil), forCellReuseIdentifier: "LivrosCell")
    }
    
    
    // MARK: - fetchBooks
    private func fetchBooks() {
        API.getBooks { (books) in
            self.booksArray = books
            self.livrosTableView.reloadData()
        }
    }
    
    
}


// MARK: - extension TableView
extension LivrosVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.booksArray?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:LivrosCell? = self.livrosTableView.dequeueReusableCell(withIdentifier: "LivrosCell", for: indexPath) as? LivrosCell
        guard let _booksArray = self.booksArray?[indexPath.row] else {fatalError()}
        cell?.setupLivros(livros: _booksArray)
        return cell ?? UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "CapituloVC", sender: self.booksArray?[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let book:BookDetail? = sender as? BookDetail
        let vc = segue.destination as? CapituloVC
        vc?.book = book
    }
}
