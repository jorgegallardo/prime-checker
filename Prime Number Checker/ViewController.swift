//
//  ViewController.swift
//  Prime Number Checker
//
//  Created by Jorge Gallardo on 8/2/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var primePic: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.primePic.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitTapped(sender: AnyObject) {
        if let number = Int(self.numberInput.text!) {

            let result: Bool = primeChecker(number)
            
            if result == true {
                self.resultLabel.text = "\(number) is a prime number!"
                self.primePic.hidden = false
            } else {
                self.primePic.hidden = true
                self.resultLabel.text = "\(number) is not a prime number"
            }
        }
        self.numberInput.text = ""
        self.view.endEditing(true)
    }
    
    func primeChecker(number: Int) -> Bool {
        if number == 0 || number == 1 || number == 2 {
            return false
        } else {
            for var i = 2; i < number; i++ {
                if number % i == 0 {
                    return false
                }
            }
            return true
        }
    }
}

