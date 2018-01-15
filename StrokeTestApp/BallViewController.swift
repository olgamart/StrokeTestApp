//
//  BallViewController.swift
//  StrokeTestApp
//
//  Created by Olga Martyanova on 10/12/2017.
//  Copyright © 2017 olgamart. All rights reserved.
//

import UIKit

class BallViewController: UIViewController {
    @IBOutlet weak var modeCaseLabel: UILabel!
    
    var p: Patient = Patient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if Patient.testing {
            modeCaseLabel.text = "Тест"            
        } else {
            modeCaseLabel.text = "Тренинг"
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
