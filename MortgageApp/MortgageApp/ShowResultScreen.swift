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
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    @IBAction func reCalculateButtonAction(_ sender: Any) {
    }
}
