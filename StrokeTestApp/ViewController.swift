//
//  ViewController.swift
//  StrokeTestApp
//
//  Created by Olga Martyanova on 09/12/2017.
//  Copyright © 2017 olgamart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var radiobutton1: UIButton!
    @IBOutlet weak var radiobutton2: UIButton!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var thirdName: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    var pol:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        radiobutton1.isEnabled = false
        firstName.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
  
      
        nextButton.layer.cornerRadius = 3
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOpacity = 0.5
        nextButton.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)


        
           // nextButton.layer.borderColor = UIColor.black.cgColor
           // nextButton.layer.borderWidth = 2
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func radioBtn1Clicked(_ sender: UIButton) {
        if !pol {
            pol = true
            radiobutton1.setImage(UIImage(named:"selectedrb.png"), for:UIControlState.normal)
            radiobutton1.setBackgroundImage(UIImage(named:"selectedrb.png"), for:UIControlState.normal)
            radiobutton2.setImage(UIImage(named:"newrdbtn.png"), for:UIControlState.normal)
            radiobutton2.setBackgroundImage(UIImage(named:"newrdbtn.png"), for:UIControlState.normal)
            radiobutton1.isEnabled = false
            radiobutton2.isEnabled = true
        }
        
    }
    
    @IBAction func radioBtn2Cliced(_ sender: UIButton) {
        if pol {
            pol = false
            radiobutton1.setImage(UIImage(named:"newrdbtn.png"), for:UIControlState.normal)
            radiobutton1.setBackgroundImage(UIImage(named:"newrdbtn.png"), for:UIControlState.normal)
            radiobutton2.setImage(UIImage(named:"selectedrb.png"), for:UIControlState.normal)
            radiobutton2.setBackgroundImage(UIImage(named:"selectedrb.png"), for:UIControlState.normal)
            radiobutton2.isEnabled = false
            radiobutton1.isEnabled = true
        }
        
    }
}

