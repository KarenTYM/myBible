//
//  BaseViewController.swift
//  myBible
//
//  Created by Fabio Makihara on 03/03/21.
//

import Foundation
import UIKit

class BaseViewController:UIViewController {
    var loading: LoadingAnimation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoading() {
        self.loading = UINib(nibName: "LoadingAnimation", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? LoadingAnimation
        
        self.loading?.frame = self.view.frame
        self.view.addSubview(self.loading ?? UIView())
        self.loading?.showLoading()
    }
    
    func hideLoading() {
        self.loading?.hideLoading()
        self.loading?.isHidden = true
    }
}
