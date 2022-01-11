//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Richard Arif Mazid on 06/01/2022.
//

import UIKit

class QuestionView: UIView {

   @IBOutlet private var label: UILabel!
   @IBOutlet private  var icon: UIImageView!
   
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet { 
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(red: 200/225.0, green: 236/225.0, blue: 160/225.0, alpha: 1)
            icon.image = UIImage(named: "Icon correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.9529960752, green: 0.525459826, blue: 0.5804060698, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7490153909, green: 0.7686286569, blue: 0.7843123674, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
}
