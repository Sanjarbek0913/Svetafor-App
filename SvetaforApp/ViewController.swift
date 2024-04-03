//
//  ViewController.swift
//  SvetaforApp
//
//  Created by Sanjarbek Abdurayimov on 04/08/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!

    @IBOutlet weak var startBtn: UIButton!
    var count = 0
    var brightest: CGFloat = 1
    var dark: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = dark
        yellowView.alpha = dark
        greenView.alpha = dark
        startBtn.setTitle("Start", for: .normal)
        
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        startBtn.layer.cornerRadius = startBtn.frame.height / 2
        startBtn.clipsToBounds = true
    }


    @IBAction func StartBtnPressed(_ sender: UIButton) {
        
        switch count{
        case 0:
            redView.alpha = brightest
            greenView.alpha = dark
            count = 1
        case 1:
            yellowView.alpha = brightest
            redView.alpha = dark
            count = 2
        case 2:
            yellowView.alpha = dark
            greenView.alpha = brightest
            count = 0
        default:
            break
        }
        startBtn.setTitle("Next", for: .normal)

    }
}

