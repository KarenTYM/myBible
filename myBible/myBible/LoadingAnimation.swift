//
//  LoadingAnimation.swift
//  myBible
//
//  Created by Fabio Makihara on 03/03/21.
//

import UIKit
import Lottie

class LoadingAnimation: UIView {
    
    @IBOutlet weak var loadingAnimationView: AnimationView!
    
    func showLoading() {
        self.loadingAnimationView.loopMode = .loop
        self.loadingAnimationView.play()
    }
    
    
    func hideLoading() {
        self.loadingAnimationView.stop()
    }
    
}
