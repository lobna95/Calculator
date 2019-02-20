//
//  ViewController.swift
//  StackLayout Calculator
//
//  Created by Sherif on 12/6/18.
//  Copyright © 2018 Lobna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var acLabel: UIButton!
    
    var number : Double = 0
    
    var flag : Bool = false
    
    var firstOpr : Bool = true
    
    var decimalPoint : Bool = true
    
    var positive : Bool = true
    
    var operation = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ACbtn(_ sender: UIButton) {
        acLabel.setTitle("AC", for: .normal)
        resultLabel.text = "0"
        flag = false
        firstOpr = true
    }
    
    @IBAction func operationBtn(_ sender: UIButton) {
        if sender.titleLabel?.text == "="{
            firstOpr = true
            calculate(opr: operation)
        }else{
            if firstOpr{
                operation =  (sender.titleLabel?.text)!
                number = Double(resultLabel.text!)!
                firstOpr = false
            }else{
                calculate(opr: operation)
            }
            operation = (sender.titleLabel?.text)!
        }
        flag = false
    }
    
    @IBAction func numberBtn(_ sender: UIButton) {
        acLabel.setTitle("C", for: .normal)
        if flag {
            resultLabel.text?.append((sender.titleLabel?.text)!)
        }else{
            resultLabel.text = sender.titleLabel?.text
            flag = true
        }
    }
    
    @IBAction func veBtn(_ sender: UIButton) {
        if flag{
            let str = resultLabel.text!
            if positive{
                resultLabel.text = "-\(str)"
                positive = false
            }else{
                resultLabel.text = String(str.dropFirst())
                positive = true
            }
        }
    }
    
    @IBAction func percentageBtn(_ sender: UIButton) {
        if flag{
            let number = (resultLabel.text! as NSString).doubleValue
            resultLabel.text = String(number / 100)
        }
    }
    
    @IBAction func decimal(_ sender: UIButton) {
        if flag{
            if decimalPoint{
                resultLabel.text?.append((sender.titleLabel?.text)!)
                decimalPoint = false
            }
        }
    }
    
    func calculate(opr: String){
        if opr == "+"{
            number += Double(resultLabel.text!)!
        }else if opr == "-"{
            number -= Double(resultLabel.text!)!
        }else if opr == "*"{
            number *=  Double(resultLabel.text!)!
        }else if opr == "/"{
            if Int(resultLabel.text!) == 0{
                resultLabel.text = "Error"
            }else{
                number /= Double(resultLabel.text!)!
            }
        }
        resultLabel.text = String(number)
    }
}
