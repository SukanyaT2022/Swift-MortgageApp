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
    var minInterestRate = 6
    var maxInterstRate = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFillHomePrice.delegate = self
        textFillDownPayment.delegate = self
        textFillInterestRate.delegate = self
      
    }
//action
    
    @IBAction func homePriceAction(_ sender: Any) {
    }
    
    @IBAction func downPaymentAction(_ sender: Any) {
    }
    
    @IBAction func loanYearSegmentAction(_ sender: Any) {
    }
    
    @IBAction func interestRateAction(_ sender: Any) {
    }
    
    @IBAction func calculateActionButton(_ sender: Any) {
    }
}
extension ViewController : UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
     
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
    
    }
}

