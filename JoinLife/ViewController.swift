//
//  ViewController.swift
//  JoinLife
//
//  Created by Елена Душакова on 15.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultButton: UILabel!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.text = "Узнай сколько дней ты уже на планете"
        // Do any additional setup after loading the view.
    }

    @available(iOS 15, *)
    @IBAction func passedButton(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
            let loc = Locale(identifier: "ru")
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func tuppedButtonResult() {
        resultButton.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
}

