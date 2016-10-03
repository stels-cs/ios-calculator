//
//  ViewController.swift
//  CalculatorDemo
//
//  Created by Иван Недзвецкий on 19.09.16.
//  Copyright © 2016 Иван Недзвецкий. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var expressionLabel: UILabel!
    let model : CalculatorModel
    
    required init?(coder aDecoder: NSCoder) {
        self.model = CalculatorModel()
        super.init(coder: aDecoder)
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        setDefaultExpression(value: model.result().getDisplay())
    }
    @IBAction func zeroButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(0).getDisplay())
    }
    @IBAction func oneButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(1).getDisplay())
    }
    @IBAction func twoButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(2).getDisplay())
    }
    @IBAction func threeButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(3).getDisplay())
    }
    @IBAction func fourButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(4).getDisplay())
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(5).getDisplay())
    }
    @IBAction func sixButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(6).getDisplay())
    }
    @IBAction func sevenButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(7).getDisplay())
    }
    @IBAction func eightButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(8).getDisplay())
    }
    @IBAction func nineButton(_ sender: UIButton) {
        setDefaultExpression(value: model.addNum(9).getDisplay())
    }
    @IBAction func dotButton(_ sender: UIButton) {
        setDefaultExpression(value: model.dot().getDisplay())
    }
    @IBAction func resetButton(_ sender: UIButton) {
        setDefaultExpression(value: model.reset().getDisplay())
    }
    @IBAction func clearButton(_ sender: UIButton) {
        setDefaultExpression(value: model.clear().getDisplay())
    }
    @IBAction func signSwitchButton(_ sender: UIButton) {
        setDefaultExpression(value: model.switchSign().getDisplay())
    }
    @IBAction func backButton(_ sender: UIButton) {
        setDefaultExpression(value: model.back().getDisplay())
    }
    @IBAction func plusButton(_ sender: UIButton) {
        setDefaultExpression(value: model.plus().getDisplay())
    }
    @IBAction func minusButton(_ sender: UIButton) {
        setDefaultExpression(value: model.minus().getDisplay())
    }
    @IBAction func multiplieButton(_ sender: UIButton) {
        setDefaultExpression(value: model.multiplie().getDisplay())
    }
    @IBAction func divideButton(_ sender: UIButton) {
        setDefaultExpression(value: model.divide().getDisplay())
    }
    func setDefaultExpression(value: String) {
        expressionLabel.text = value
    }
}

extension  CalculatorViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultExpression(value: "0")
    }
}

