//
//  ViewController.swift
//  calculator
//
//  Created by Abidi Family on 6/18/17.
//  Copyright © 2017 Abidi Family. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberOneButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    enum Operators {
        case add
        case subtract
        case divide
        case multiply
    }
    
    var selectedOperator: Operators? = nil
    var num1: Int = 0
    var num2: Int = 0
    var num3: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func doSomething(_ pressedButton: UIButton) {
        
        let number = Int(pressedButton.titleLabel!.text!)!
        let previousValue = resultLabel.text ?? ""
        resultLabel.text = previousValue + String(describing: number)
        
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text = ""
        num1 = 0
        num2 = 0
        addButton.isEnabled = true
    }
    
    @IBAction func add(_ sender: UIButton) {
        selectedOperator = .add
        sender.isEnabled = false
        num1 = Int(resultLabel!.text!)!
        resultLabel.text = ""
    }
    
    
    @IBAction func equalAction(_ sender: UIButton) {
        
        if let selectedOperator = self.selectedOperator {
            num2 = Int(resultLabel!.text!)!
            switch selectedOperator {
            case .add:
                resultLabel.text = "\(num1 + num2)"
                num1 = 0
                num2 = 0
                addButton.isEnabled = true
            case .subtract:
                resultLabel.text = "\(num1 - num2)"
                num1 = 0
                num2 = 0
                subtractButton.isEnabled = true
            case .multiply:
                resultLabel.text = "\(num1 * num2)"
                num1 = 0
                num2 = 0
                multiplyButton.isEnabled = true
            case .divide:
                resultLabel.text = "\(num1 / num3)"
                num1 = 0
                num3 = 1
                divideButton.isEnabled = true
            }
        }
    }

    @IBAction func subtract(_ sender: UIButton) {
        selectedOperator = .subtract
        sender.isEnabled = false
        num1 = Int(resultLabel!.text!)!
        resultLabel.text = ""
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        selectedOperator = .multiply
        sender.isEnabled = false
        num1 = Int(resultLabel!.text!)!
        resultLabel.text = ""
    }

    @IBAction func divide(_ sender: UIButton) {
        selectedOperator = .divide
        sender.isEnabled = false
        num1 = Int(resultLabel!.text!)!
        resultLabel.text = ""
    }

}









