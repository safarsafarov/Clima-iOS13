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

//        searchTextField.delegate = self
    }

    // Action row
    @IBAction func searchPressed(_ sender: Any) {
        searchTextField.endEditing(true)
    }

    // Methods
    // ========
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }




}




//TODO:DONE: 🧛‍♂️ How to create a dark0mode enabled app and use vector assets.
//TODO: 📝 Learn to use the UITextField to get user input.
//TODO: 👨🏻‍💼 Learn about Swift Protocols and the Delegate Design Pattern.
//TODO: 👋 Learn to work with APIs by making HTTP requests with URLSession,
//TODO: 🧬 Parse Json with native JSONDecoder.
//TODO: 💻 Learn to use computed properties, closures and extensions.
//TODO: 🗺 Learn to use Core Location to get the GPS data.