//
//  VersiculoVC.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import UIKit

class VersiculoVC: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var capituloLabel: UILabel!
    @IBOutlet weak var versiculoTableView: UITableView!
    
    var numeroVersiculos:Int = 0
//    var chapterVerses:BookDetail?
    var verse:[VerseChapter] = []
    var bookname:String = ""
    var capEscolhido:Int = 1
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configView()
        self.fetchCapter()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - configView()
    private func configView() {
        self.versiculoTableView.dataSource = self
        self.versiculoTableView.delegate = self
        self.versiculoTableView.register(UINib(nibName: "VersiculoCell", bundle: nil), forCellReuseIdentifier: "VersiculoCell")
    }
    
    private func fetchCapter() {
        API.getVerses(abbrev: self.bookname, chapter: String(self.capEscolhido)) { (chapter) in
            self.nomeLabel.text = chapter.book.name
            self.capituloLabel.text = "Capítulo: \(String(chapter.chapter.number))"
            self.numeroVersiculos = chapter.chapter.verses
            self.verse = chapter.verses
            self.versiculoTableView.reloadData()
        }
    }
}


// MARK: - extension TableView
extension VersiculoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.numeroVersiculos
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:VersiculoCell? = self.versiculoTableView.dequeueReusableCell(withIdentifier: "VersiculoCell", for: indexPath) as? VersiculoCell
        cell?.setupVersiculo(capitulo: self.verse[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
}
