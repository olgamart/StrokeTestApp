//
//  ModeCaseViewController.swift
//  StrokeTestApp
//
//  Created by Olga Martyanova on 10/12/2017.
//  Copyright © 2017 olgamart. All rights reserved.
//

import UIKit

class ModeCaseViewController: UIViewController {
    
    @IBOutlet weak var frameCaseLabel: UILabel!    
    @IBOutlet var numberButtons: [UIButton]!
    @IBOutlet var modeButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        for button in numberButtons {
            button.layer.cornerRadius = 3
        }
        
        for button in modeButtons {
            button.layer.borderColor = UIColor(red: CGFloat(0.74), green: CGFloat(0.75), blue: CGFloat(0.76) , alpha: 1).cgColor
            button.layer.borderWidth = 1
            
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.3
            button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
 
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func trainingButtonClicked(_ sender: UIButton) {
        Patient.testing = false
    }
    
    @IBAction func testButtonClicked(_ sender: UIButton) {
        Patient.testing = true
    }
    
    @IBAction func button1Clicked(_ sender: UIButton) {
        Patient.set_fr = 1
        frameCaseLabel.text = "1 - Левый верхний угол"
        
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        Patient.set_fr = 2
        frameCaseLabel.text = "2 - Правый верхний угол"
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        Patient.set_fr = 3
        frameCaseLabel.text = "3 - Правый нижний угол"
    }
    
    @IBAction func button4Clicked(_ sender: UIButton) {
        Patient.set_fr = 4
        frameCaseLabel.text = "4 - Левый нижний угол"
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
