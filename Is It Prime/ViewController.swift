//
//  ViewController.swift
//  Is It Prime
//
//  Created by Toph Matta on 9/18/15.
//  Copyright (c) 2015 Toph Matta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        let num = numberTextField.text!.toInt()!
        var isPrime = true
        
        if num == 1 {
            
            isPrime = false
            
        }
        
        if num != 2 && num != 1{
            
            for var i = 2; i < num; i++ {
                if num % i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime {
            resultLabel.text = "\(num) is prime!"

        }
        else {
            resultLabel.text = "\(num) is not prime!"
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

