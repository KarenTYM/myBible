//
//  VersiculoCell.swift
//  myBible
//
//  Created by Fabio Makihara on 27/02/21.
//

import UIKit

class VersiculoCell: UITableViewCell {

    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var versiculoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupVersiculo(capitulo:VerseChapter) {
        self.numeroLabel.text = String(capitulo.number)
        self.versiculoLabel.text = capitulo.text
    }
}
