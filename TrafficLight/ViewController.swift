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
    
    private var redLightAlpha = 0.7
    private var yellowLightAlpha = 0.7
    private var greenLightAlpha = 0.7
    
    private var trafficLightScheme = "---"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = 90
        yellowLightView.layer.cornerRadius = 80
        greenLightView.layer.cornerRadius = 80
        
        redLightView.backgroundColor = UIColor.systemRed.withAlphaComponent(redLightAlpha)
        yellowLightView.backgroundColor = UIColor.systemYellow.withAlphaComponent(yellowLightAlpha)
        greenLightView.backgroundColor = UIColor.systemGreen.withAlphaComponent(greenLightAlpha)
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)
        
        switch trafficLightScheme {
        case "---":
            redLightAlpha = 1.0
            yellowLightAlpha = 0.7
            greenLightAlpha = 0.7
            trafficLightScheme = "R--"
            refreshTrafficLight()
        case "R--":
            redLightAlpha = 0.7
            yellowLightAlpha = 1.0
            greenLightAlpha = 0.7
            trafficLightScheme = "-Y-"
            refreshTrafficLight()
        case "-Y-":
            redLightAlpha = 0.7
            yellowLightAlpha = 0.7
            greenLightAlpha = 1.0
            trafficLightScheme = "--G"
            refreshTrafficLight()
        default:
            redLightAlpha = 1.0
            yellowLightAlpha = 0.7
            greenLightAlpha = 0.7
            trafficLightScheme = "R--"
            refreshTrafficLight()
        }
        
        
        func refreshTrafficLight() {
            redLightView.backgroundColor = UIColor.systemRed.withAlphaComponent(redLightAlpha)
            yellowLightView.backgroundColor = UIColor.systemYellow.withAlphaComponent(yellowLightAlpha)
            greenLightView.backgroundColor = UIColor.systemGreen.withAlphaComponent(greenLightAlpha)
        }

        
    }
    
}
