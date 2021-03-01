//
//  LivrosCell.swift
//  myBible
//
//  Created by Fabio Makihara on 26/02/21.
//

import UIKit

class LivrosCell: UITableViewCell {
    
    @IBOutlet weak var livroLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupLivros(livros:BookDetail) {
        self.livroLabel.text = livros.name ?? ""
    }
    
}
