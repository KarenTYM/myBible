//
//  DevocionalVC.swift
//  myBible
//
//  Created by Fabio Makihara on 25/02/21.
//

import UIKit

class DevocionalVC: UIViewController {
    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var passagemLabel: UILabel!
    @IBOutlet weak var textoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configView()
    }

    
    private func configView() {
        let formatter = DateFormatter()
        formatter.dateFormat = "d/MMM/y - E"
        self.dataLabel.text = formatter.string(from: Date())
        API.getRandomVerse(version: "nvi") { (verse) in
            self.passagemLabel.text = "\(verse.book.name) \(verse.chapter):\(verse.number)"
            self.textoLabel.text = "\"\(verse.text)\""
        }
    }
}
