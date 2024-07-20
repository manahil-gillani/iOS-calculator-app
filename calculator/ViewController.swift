//
//  ViewController.swift
//  calculator
//
//  Created by syeda manahil fatima on 11/07/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calworking: UILabel!
    @IBOutlet weak var calresults: UILabel!
    
    var workings: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        clearall()
        // Do any additional setup after loading the view.
    }

    func clearall(){ //to clear screen
        workings=""
        calworking.text=""
        calresults.text=""
    }
    
    @IBAction func allcleartap(_ sender: Any) {
        clearall()
    }
    
    func calculation(value: String){
        workings=workings+value
        calworking.text=workings
    }
    func formatresult(result: Double)-> String
    {
        if(result.truncatingRemainder(dividingBy: 1)==0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
            
    }
    @IBAction func plusminus(_ sender: Any) {
        
    }
    @IBAction func percentage(_ sender: Any) {
        calculation(value: "%")
    }
    @IBAction func divide(_ sender: Any) {
        calculation(value: "/")
    }
    @IBAction func seven(_ sender: Any) {
        calculation(value: "7")
    }
    
    @IBAction func eight(_ sender: Any) {
        calculation(value: "8")
    }
    @IBAction func nine(_ sender: Any) {
        calculation(value: "9")
    }
    @IBAction func multiply(_ sender: Any) {
        calculation(value: "*")
    }
    @IBAction func four(_ sender: Any) {
        calculation(value: "4")
    }
    
    @IBAction func five(_ sender: Any) {
        calculation(value: "5")
    }
    @IBAction func six(_ sender: Any) {
        calculation(value: "6")
    }
    @IBAction func minus(_ sender: Any) {
        calculation(value: "-")
    }
    @IBAction func one(_ sender: Any) {
        calculation(value: "1")
    }
    @IBAction func two(_ sender: Any) {
        calculation(value: "2")
    }
    @IBAction func three(_ sender: Any) {
        calculation(value: "3")
    }
    @IBAction func plus(_ sender: Any) {
        calculation(value: "+")
    }
    @IBAction func decimal(_ sender: Any) {
        calculation(value: ".")
    }
    @IBAction func equal(_ sender: Any) {
       let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatresult(result: result)
        calresults.text=resultString
    }
    @IBAction func zero(_ sender: Any) {
        calculation(value: "0")
    }
    
}

