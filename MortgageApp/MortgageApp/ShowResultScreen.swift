//
//  ShowResultScreen.swift
//  MortgageApp
//
//  Created by Tiparpron Sukanya on 6/5/24.
//

import Foundation
import UIKit
import DGCharts

class ShowResultScreen : UIViewController{
    
    @IBOutlet weak var pieChartView: PieChartView!
    
    @IBOutlet weak var interestLabel: UILabel!
    
    @IBOutlet weak var insuranceLabel: UILabel!
    
    @IBOutlet weak var propertyTaxLabel: UILabel!
    
    @IBOutlet weak var recalculateButton: UIButton!
    
    var storeEmi: Double = 0
    var homePrice = 0
    var propertyTax : Double = 0
    var insurance: Double = 0
    override func viewDidLoad() {
       super.viewDidLoad()
        displayData()
    }
    
    @IBAction func reCalculateButtonAction(_ sender: Any) {
    }
    func displayData(){
        let value = String(format: "%.2f", storeEmi )//%.2f 2 decimal
        interestLabel.text = value
        
    }
}
