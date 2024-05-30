//
//  ViewController.swift
//  MortgageApp
//
//  Created by Tiparpron Sukanya on 5/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFillHomePrice: UITextField!
    
    @IBOutlet weak var homePriceSlider: UISlider!
    
    @IBOutlet weak var textFillDownPayment: UITextField!
    
    @IBOutlet weak var downPaymentSlider: UISlider!
    
    @IBOutlet weak var loanYearSegment: UISegmentedControl!
    
    @IBOutlet weak var textFillInterestRate: UITextField!
    
    @IBOutlet weak var interestRateSlider: UISlider!
    
    
    @IBOutlet weak var calculateButton: UIButton!
    
    
    var minHomePrice = 100000
    var maxHomePrice = 2000000
    var minDownPayment = 20000
    var maxDownPayment = 70000
    var minInterestRate = 2.0
    var maxInterstRate = 15.0
    
    var homePrice = 100000{
        didSet{
            updateDownPayment()
        }
    }
    var downPayment = 20000
    var interestRate = 2.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFillHomePrice.delegate = self
        textFillDownPayment.delegate = self
        textFillInterestRate.delegate = self
        initSetup()
    }
//action
    func initSetup(){
        //capture current value from slider - minimum slider move to the beginning
        homePriceSlider.minimumValue = Float(minHomePrice)//define where to start
        homePriceSlider.maximumValue = Float(maxHomePrice)//define where to end
        homePriceSlider.value = Float(minHomePrice)//current value on slider
        
        //start number 100000 on the screen
        textFillHomePrice.text = "\(homePrice)"
        
        downPaymentSlider.minimumValue = Float(minDownPayment)//define where to start
        downPaymentSlider.maximumValue = Float(maxDownPayment)//define where to end
        downPaymentSlider.value = Float(minDownPayment)//current value on slider
        
        //start number 20000 on the screen
        textFillDownPayment.text = "\(downPayment)"
        
        interestRateSlider.minimumValue = Float(minInterestRate)//define where to start
        interestRateSlider.maximumValue = Float(maxInterstRate)//define where to end
        interestRateSlider.value = Float(minInterestRate)//current value on slider
        
        //start number 6 on the screen
        textFillInterestRate.text = "\(interestRate)"
    }
    
    //below if home price change downppayment have to change updated based on home price
    func updateDownPayment(){
        minDownPayment = (homePrice * 20)/100
        maxDownPayment = (homePrice * 70)/100
        downPaymentSlider.minimumValue = Float(minDownPayment)//min 20% of home price
        downPaymentSlider.maximumValue = Float(maxDownPayment)// max 70% of home price
        
//        downPayment = downPayment > minDownPayment && downPayment < maxDownPayment ? downPayment : minDownPayment
//     line below -    if down payment greater than mi downPayment 20% then downpayment show what ever user put ex 60%// else show minimum down payment ex 20%
      downPayment = minDownPayment
        downPaymentSlider.value = Float(downPayment)// when update value down should we min 20% 20,000 or over
        
//        downPayment = Int(downPaymentSlider.value)
        //start number 20000 on the screen
        textFillDownPayment.text = "\(downPayment)"
        
    }
    
    @IBAction func homePriceAction(_ sender: Any) {
        let value = Int(homePriceSlider.value)// int chage decimal to full number
        homePrice = value
        textFillHomePrice.text = "\(value)" // convert value to sting
    }
    
    @IBAction func downPaymentAction(_ sender: Any) {
        let value = Int(downPaymentSlider.value)// int chage decimal to full number
        downPayment = value
        textFillDownPayment.text = "\(value)" // convert value to sting
    
    }
    
    @IBAction func loanYearSegmentAction(_ sender: Any) {
        self.view.endEditing(true)//system know user done with typring input box -user end typing and go next input type -mean end typeing first box
    }
    
    @IBAction func interestRateAction(_ sender: Any) {
        let value = String(format: "%.1f", interestRateSlider.value )
        interestRate = Double(value) ?? minInterestRate
        textFillInterestRate.text = "\(interestRate)" // convert value to sting
    }
    
    @IBAction func calculateActionButton(_ sender: Any) {
    }
}
extension ViewController : UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
     
    }
    //func detect the change in text fill - shouldChangeCharactersIn
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == textFillHomePrice{
            
        }
       return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFillHomePrice{
            let price = Int(textField.text ?? "0") ?? 0
            if price < minHomePrice{
                homePrice = minHomePrice
                textField.text = "\(homePrice)"
            }
            if price > maxHomePrice{
                homePrice = maxHomePrice
                textField.text = "\(homePrice)"
            }
            homePrice = price
            
//           update  slider move on base on price
            homePriceSlider.value = Float(homePrice)
            
        }
//        func for downpayment slider text fill
        if textField == textFillDownPayment{
            let price = Int(textField.text ?? "0") ?? 0 // if user type somthing get string ?? 0 if no value put default value
            if price < minDownPayment{
                downPayment = minDownPayment
                textField.text = "\(downPayment)"//set value to textfile
            }
            if price > maxHomePrice{
                downPayment = maxDownPayment
                textField.text = "\(downPayment)" //"\()" set to strin coz it interger
            }
            downPayment = price
            downPaymentSlider.value = Float(downPayment)//float() convert to decimal
       
        }
        
    }
}

