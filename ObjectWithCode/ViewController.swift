//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Atakan Aktakka on 30.08.2023.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
    var myButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
       
        myLabel.text="Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width*0.5, y: height*0.5, width: width*0.5, height: 50)
        view.addSubview(myLabel)
        
        
        
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width*0.3, y: height*0.3, width: width*0.3, height: 50)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }


    @objc func myAction(){
        myLabel.text = "tapped"
    }
}

