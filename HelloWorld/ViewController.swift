//
//  ViewController.swift
//  HelloWorld
//
//  Created by Serge Bowski on 11/4/23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var redView: UIView!
    @IBOutlet private weak var yellowView: UIView!
    @IBOutlet private weak var greenView: UIView!
    @IBOutlet private weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        
        startButton.backgroundColor = .systemBlue
        startButton.layer.cornerRadius = 10
    }

    @IBAction private func changeColor(_ sender: UIButton) {
        
        startButton.setTitle("Next", for: .normal)
        
        if sender.tag > 2 { 
            sender.tag = 0
            greenView.alpha = 0.3
        }

        switch sender.tag {
        case 0:
            sender.tag += 1
            redView.alpha = 1
        case 1:
            sender.tag += 1
            redView.alpha = 0.3
            yellowView.alpha = 1
        default:
            sender.tag += 1
            greenView.alpha = 1
            yellowView.alpha = 0.3
        }

    }
    
}

