//
//  QuisVC.swift
//  myBible
//
//  Created by Fabio Makihara on 02/03/21.
//

import UIKit

class QuisVC: UIViewController {
    
    @IBOutlet weak var numDaPerguntaLabel: UILabel!
    @IBOutlet weak var perguntaLabel: UILabel!
    @IBOutlet weak var respALabel: UILabel!
    @IBOutlet weak var respBLabel: UILabel!
    @IBOutlet weak var respCLabel: UILabel!
    @IBOutlet weak var respDLabel: UILabel!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var respCertaLabel: UILabel!
    @IBOutlet weak var comentarioTextView: UITextView!
    @IBOutlet weak var voltarButton: UIButton!
    @IBOutlet weak var frenteButton: UIButton!
    @IBOutlet weak var reiniciarButton: UIButton!
    
    var numPergunta:Int = 1
    var acertos:Int = 0
    
    let color = UIColor(red: 0xFF, green: 0xFF, blue: 0xFF)
    let rgbColor = UIColor(rgb: 0x004F69)
    let rgbColorGreen = UIColor(rgb: 0x00914F)
    let rgbColotRed = UIColor(rgb: 0x960E00)
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configButtons()
        self.configPerguntas(numPergunta: numPergunta)
    }
    
    
    // MARK: - confiView
    private func configButtons() {
        self.reiniciarButton.layer.cornerRadius = 5
        self.aButton.layer.cornerRadius = 5
        self.bButton.layer.cornerRadius = 5
        self.cButton.layer.cornerRadius = 5
        self.dButton.layer.cornerRadius = 5
    }
    
    
    // MARK: - configPerguntas
    private func configPerguntas(numPergunta:Int) {
        self.numDaPerguntaLabel.text = "Pergunta: \(numPergunta) de \(String(quisArray.count))"
        self.perguntaLabel.text = quisArray[numPergunta - 1].pergunta
        self.respALabel.text = quisArray[numPergunta - 1].respA
        self.respBLabel.text = quisArray[numPergunta - 1].respB
        self.respCLabel.text = quisArray[numPergunta - 1].respC
        self.respDLabel.text = quisArray[numPergunta - 1].respD
        
        self.aButton.backgroundColor = self.rgbColor
        self.bButton.backgroundColor = self.rgbColor
        self.cButton.backgroundColor = self.rgbColor
        self.dButton.backgroundColor = self.rgbColor
        
        self.comentarioTextView.isHidden = true
        self.respCertaLabel.isHidden = true
        
        if self.numPergunta == 1 {
            self.voltarButton.isHidden = true
        } else {
            self.voltarButton.isHidden = false
        }
    }
    
    
    // MARK: - IBActions
    @IBAction func respostaButtonTapped(_ sender: UIButton) {
        if sender.titleLabel?.text == quisArray[self.numPergunta - 1].respCerta {
            self.comentarioTextView.text = quisArray[self.numPergunta - 1].comentario
            self.comentarioTextView.isHidden = false
            sender.backgroundColor = self.rgbColorGreen
            self.respCertaLabel.text = "Resposta: \(quisArray[self.numPergunta - 1].respCerta)"
            self.respCertaLabel.isHidden = false
            self.acertos += 1
        } else {
            self.comentarioTextView.text = quisArray[self.numPergunta - 1].comentario
            self.comentarioTextView.isHidden = false
            sender.backgroundColor = self.rgbColotRed
            self.respCertaLabel.text = "Resposta: \(quisArray[self.numPergunta - 1].respCerta)"
            self.respCertaLabel.isHidden = false
        }
    }
    

    @IBAction func voltarButtonTapped(_ sender: UIButton) {
        self.numPergunta -= 1
        self.configPerguntas(numPergunta: self.numPergunta)
        self.comentarioTextView.text = quisArray[self.numPergunta - 1].comentario
        self.respCertaLabel.text = "Resposta: \(quisArray[self.numPergunta - 1].respCerta)"
        self.comentarioTextView.isHidden = false
        self.respCertaLabel.isHidden = false
        print("Qtdd resp certa = \(self.acertos)")
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultadoVC
        vc?.acertos = self.acertos
    }
    
    
    @IBAction func frenteButtonTapped(_ sender: UIButton) {
        if self.numPergunta == quisArray.count {
            performSegue(withIdentifier: "ResultadoVC", sender: nil)
        } else {
            self.numPergunta += 1
            self.configPerguntas(numPergunta: self.numPergunta)
            print("Qtdd resp certa = \(self.acertos)")
        }
    }
    
    
    @IBAction func reiniciarButtonTapped(_ sender: UIButton) {
        self.numPergunta = 1
        self.acertos = 0
        self.configPerguntas(numPergunta: self.numPergunta)
    }
}
