//
//  ViewController.swift
//  Temperature Converter
//
//  Created by TANER DÜZCEER on 9.02.2020.
//  Copyright © 2020 TanerMan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var counter : Int = 0

    //ViewController class and Main storyboard class after drag and drop these outlets are created
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var conversionNumberLabel: UILabel!
    
    
    
    
    @IBAction func ConvertClicked(_ sender: Any)
    {
        
        
        if let result = tempEntry.text // take text label value
        {
            
            if (result == "") //ıt cannot be empty
            {
                return
            }
            else
            {
                if let num = Double(result)
                {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    updateCountByOne()
                }
            }
        }
        
    }
    
    func updateCountByOne()
    {
        counter+=1
        conversionNumberLabel.text = String(counter) + " conversions"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

