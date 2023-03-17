//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр Мосолов on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
    }
}

