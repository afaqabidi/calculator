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
    
    enum Operators {
        case add
        case subtract
        case divide
        case multiply
    }
    
    var selectedOperator: Operators? = nil
    
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
    }
    
    @IBAction func add(_ sender: UIButton) {
        selectedOperator = .add
        sender.tintColor = .black
    }
    
}

