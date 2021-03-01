//
//  CapítuloVC.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import UIKit

class CapituloVC: UIViewController {
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var capitulosTableView: UITableView!
    @IBOutlet weak var autorLabel: UILabel!
    @IBOutlet weak var grupoLabel: UILabel!
    @IBOutlet weak var testamentoLabel: UILabel!
    @IBOutlet weak var comentarioTextView: UITextView!
    
    var book:BookDetail?
    var capituloArray:[Int] = []
    var numCapitulo:Int = 1
    var capEscolhido:Int = 1
    
    // MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configView()
        self.fetchBookDetails()
        self.numCapitulos()
    }
    
    
    // MARK: - configView()
    private func configView() {
        self.capitulosTableView.delegate = self
        self.capitulosTableView.dataSource = self
        self.capitulosTableView.register(UINib(nibName: "CapituloCell", bundle: nil), forCellReuseIdentifier: "CapituloCell")
        self.capitulosTableView.tableFooterView = UIView(frame: .zero)
    }
    
    
    // MARK: - fetchBookDetails()
    private func fetchBookDetails() {
        API.getBookDetails(abbrev: self.book?.abbrev.pt ?? "") { (book) in
            self.nomeLabel.text = book.name ?? ""
            self.autorLabel.text = "Autor: \(book.author)"
            self.grupoLabel.text = "Grupo: \(book.group)"
            self.testamentoLabel.text = "Testamento: \(book.testament)"
            self.comentarioTextView.text = book.comment ?? ""
        }
    }
    
    private func numCapitulos() {
        while self.numCapitulo <= self.book?.chapters ?? 0 {
            self.capituloArray.append(self.numCapitulo)
            self.numCapitulo += 1
        }
    }
}


// MARK: - extension TableView
extension CapituloVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.capituloArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CapituloCell? = self.capitulosTableView.dequeueReusableCell(withIdentifier: "CapituloCell", for: indexPath) as? CapituloCell
        cell?.setupCapitulo(numeroDoCapitulo: self.capituloArray[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.capEscolhido = self.capituloArray[indexPath.row]
        self.performSegue(withIdentifier: "VersiculoVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? VersiculoVC
        vc?.bookname = self.book?.abbrev.pt ?? ""
        vc?.capEscolhido = self.capEscolhido
        vc?.numCapitulos = self.book?.chapters ?? 0
    }
}
