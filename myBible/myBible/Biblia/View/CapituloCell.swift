//
//  LabelCell.swift
//  myBible
//
//  Created by Fabio Makihara on 01/03/21.
//

import UIKit

class CapituloCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCapitulo(numeroDoCapitulo:Int) {
        self.numberLabel.text = String(numeroDoCapitulo)
    }
}
