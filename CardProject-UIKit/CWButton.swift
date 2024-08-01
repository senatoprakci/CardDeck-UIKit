//
//  CWButton.swift
//  CardProject-UIKit
//
//  Created by Sena Toprakcı on 24.07.2024.
//

import UIKit

class CWButton: UIButton {

    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder:NSCoder) {
        fatalError("inir(coder:) has not been implemented")
    }
    
    init(color: UIColor, title:String, systemImageName:String) {
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing

        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
