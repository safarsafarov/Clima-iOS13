//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    // Outlets
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!

    // View row
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTextField.delegate = self
    }

    // Action row
    @IBAction func searchPressed(_ sender: Any) {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }

    // Methods
    // ========
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {

    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }
    

}

