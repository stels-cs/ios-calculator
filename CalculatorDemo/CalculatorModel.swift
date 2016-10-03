class CalculatorModel {
    
    var display : String
    var hasDot : Bool = false
    var acc : Double = 0
    var num : Double = 0
    var lastSign : String = ""
    var clearDisplay : Bool = false
    var accIsFull : Bool = false
    
    
    init() {
        self.display = ""
    }
    
    func addNum(_ num:Int) -> CalculatorModel {
        if (!clearDisplay) {
            display += String(num)
        } else {
            display = String(num)
            clearDisplay = false
        }
        let number = Double(display)
        if (number != nil) {
            self.num = number!
            display = String(format: "%g", number!)
        }
        return self
    }
    
    func getDisplay() -> String {
        return display
    }
    
    func dot() -> CalculatorModel {
        if display.range(of: ".") == nil {
            if (!clearDisplay) {
                display += "."
            } else {
                display = "0."
                clearDisplay = false
            }
        }
        return self
    }
    
    func reset() -> CalculatorModel {
        display = "0"
        acc = 0
        lastSign = ""
        num = 0
        accIsFull = false
        clearDisplay = false
        return self
    }
    
    func clear() -> CalculatorModel {
        display = "0"
        num = 0
        return self
    }
    
    func switchSign() -> CalculatorModel {
        return self
    }
    
    func back() -> CalculatorModel {
        return self
    }
    
    func plus() -> CalculatorModel {
        if (accIsFull) {
            acc += num
        } else {
            accIsFull = true
            acc = num
        }
        display = String(format: "%g", acc)
        lastSign = "+"
        clearDisplay = true
        return self
    }
    
    func minus() -> CalculatorModel {
        if (accIsFull) {
            acc -= num
        } else {
            accIsFull = true
            acc = num
        }
        display = String(format: "%g", acc)
        lastSign = "-"
        clearDisplay = true
        return self
    }
    
    func multiplie() -> CalculatorModel {
        if (accIsFull) {
            acc *= num
        } else {
            accIsFull = true
            acc = num
        }
        display = String(format: "%g", acc)
        lastSign = "*"
        clearDisplay = true
        return self
    }
    
    func divide() -> CalculatorModel {
        if (accIsFull) {
            if (num != 0) {
                acc /= num
                display = String(format: "%g", acc)
            } else {
                display = "Error"
            }
        } else {
            acc = num
            accIsFull = true
        }
        lastSign = "/"
        clearDisplay = true
        return self
    }
    
    func result() -> CalculatorModel {
        if (lastSign == "+") {
            return plus()
        }
        if (lastSign == "-") {
            return minus()
        }
        if (lastSign == "*") {
            return multiplie()
        }
        if (lastSign == "/") {
            return divide()
        }
        return self
    }
}
