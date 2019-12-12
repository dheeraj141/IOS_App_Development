//
//  ViewController.swift
//  New_app
//
//  Created by Dheeraj Kumar Ramchandani on 12/12/19.
//  Copyright © 2019 Dheeraj Kumar Ramchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label =  UILabel()
        
        // this line specifies that we are going to specify our autolayout
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = " label from code"
        view.addSubview(label)
        // you need to add the label before we can add the constraints into the label
        // this line says that the left edge of the label is going to be 50 edges away from the left edge of the view
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        
        //setting the right anchor ( space from the right edge)
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        // top anchor here we are taking  the safe area rather than the topanchor
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
        // specifying the height of the anchor
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // font size of the label
        label.font = UIFont.systemFont(ofSize: 120)
        
        // what should be the minimum size of the label font decided from this factor 0.2*120 = 24
        label.minimumScaleFactor = 0.2
        
        // this line for adjusting the font size according to the width
        label.adjustsFontSizeToFitWidth = true
        
       }


}

