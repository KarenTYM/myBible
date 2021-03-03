//
//  ResultadoVC.swift
//  myBible
//
//  Created by Fabio Makihara on 02/03/21.
//

import UIKit
import Lottie

class ResultadoVC: UIViewController {
    
    @IBOutlet weak var mensagemLabel: UILabel!
    @IBOutlet weak var acertosLabel: UILabel!
    @IBOutlet weak var sadAnimationView: AnimationView!
    @IBOutlet weak var greatAnimationView: AnimationView!
    var acertos:Int = 0
    @IBOutlet weak var excelenteAnimationView: AnimationView!
    @IBOutlet weak var studyAnimationView: AnimationView!
    
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configView()
    }
    
    private func configView() {
        if self.acertos <= 10 {
            self.mensagemLabel.text = "Oh no! Estude mais a Bíblia. Conhecer a verdade de Deus é fundamental para a nossa intimidade com o Pai"
            self.acertosLabel.text = "Você acertou \(self.acertos) de \(String(quisArray.count)) perguntas"
            self.hideAnimations()
            self.sadAnimationView.isHidden = false
            self.sadAnimationView.loopMode = .loop
            self.sadAnimationView.play()
        } else if self.acertos <= 20 {
            self.mensagemLabel.text = "Acho que você precisa estudar um pouco mais a Bíblia. Não desanime, Deus quer ter uma intimidade com você; e ler a Bíblia é uma das formas de conhecer melhor nosso Deus poderoso"
            self.acertosLabel.text = "Você acertou \(self.acertos) de \(String(quisArray.count)) perguntas"
            self.hideAnimations()
            self.sadAnimationView.isHidden = false
            self.sadAnimationView.loopMode = .loop
            self.sadAnimationView.play()
        } else if self.acertos <= 30 {
            self.mensagemLabel.text = "Você não foi tão mal assim...mas pode melhorar. Deus te convida a ter uma vida de intimidade com Ele, e para isso, precisamos conhecer a fundo o que diz a Tua Palavra"
            self.acertosLabel.text = "Você acertou \(self.acertos) de \(String(quisArray.count)) perguntas"
            self.hideAnimations()
            self.studyAnimationView.isHidden = false
            self.studyAnimationView.loopMode = .loop
            self.studyAnimationView.play()
        } else if self.acertos <= 39 {
            self.mensagemLabel.text = "Parabéns! Seu conhecimento sobre a Bíblia está muito bom. Falta pouco para ficar excelente! Vamos estudar mais um pouco e profundamente conhecer a Deus, do jeitinho que Ele quer que O conheçamos"
            self.acertosLabel.text = "Você acertou \(self.acertos) de \(String(quisArray.count)) perguntas"
            self.hideAnimations()
            self.greatAnimationView.isHidden = false
            self.greatAnimationView.loopMode = .loop
            self.greatAnimationView.play()
        } else if self.acertos == 40 {
            self.mensagemLabel.text = "Excelente! Você é um mestre da Bíblia. Vamos continuar estudando a Palavra de Deus e levando o seu Evangelho àqueles que não O conhecem"
            self.acertosLabel.text = "Você acertou \(self.acertos) de \(String(quisArray.count)) perguntas"
            self.hideAnimations()
            self.excelenteAnimationView.isHidden = false
            self.excelenteAnimationView.loopMode = .loop
            self.excelenteAnimationView.play()
        }
        
    }
    
    private func hideAnimations() {
        self.sadAnimationView.isHidden = true
        self.greatAnimationView.isHidden = true
        self.excelenteAnimationView.isHidden = true
        self.studyAnimationView.isHidden = true
    }
}
