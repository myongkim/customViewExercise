//
//  RatingControl.swift
//  CustomViewExcercise
//
//  Created by Isaac Kim on 9/17/17.
//  Copyright © 2017 Isaac Kim. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //Mark: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
        
    }
    
    // Mark: Button Action
    func ratingButtonTapped(button: UIButton){
        print("Button Pressed!")
    }
    
    
    // Mark: Private methods
 
    private func setupButtons(){
        
        // create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        //setup the button action
        button.addTarget(self, action:#selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        
        // add the button to the stack
        addArrangedSubview(button)
        
 
        
    }
       
    
}
