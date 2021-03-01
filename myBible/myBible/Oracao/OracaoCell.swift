//
//  OracaoCell.swift
//  myBible
//
//  Created by Fabio Makihara on 01/03/21.
//

import UIKit

class OracaoCell: UITableViewCell {

    @IBOutlet weak var oracaoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupOracao(oracao:PedidosDeOracao) {
        self.oracaoLabel.text = oracao.pedido
    }
}
