//
//  ViewController.swift
//  New_app
//
//  Created by Dheeraj Kumar Ramchandani on 12/12/19.
//  Copyright © 2019 Dheeraj Kumar Ramchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create the label
    let label = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create the frame of the label position and the size of the label, text and add it to view
        label.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
        label.text = "Hello"
        view.addSubview(    label)
        
        // same for button create it, add the position and the size and add it to view
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 150, width: 100, height: 40)
        view.addSubview(    button)
        
        // this is necessary as the default color of the button is white so we will not be able to view it so change it to blue
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Tap me ", for: .normal)
        
        
        // add the method which will be called when the button is pressed
        button.addTarget(self, action: #selector(press_button), for: .touchUpInside)
        
    }
    @objc func press_button()
    {
        label.text = " button presses"
    }
    


}

