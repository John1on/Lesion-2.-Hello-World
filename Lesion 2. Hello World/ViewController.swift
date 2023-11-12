//
//  ViewController.swift
//  Lesion 2. Hello World
//
//  Created by Ion on 03.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var showColorButton: UIButton!
    
    var currentSignalIndex = 0

    private var semaphoreColors: [UIView] = []
    private let cornerRadius: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = cornerRadius
        yellowView.layer.cornerRadius = cornerRadius
        greenView.layer.cornerRadius = cornerRadius
        
        showColorButton.layer.cornerRadius = 25
        
        semaphoreColors = [redView, yellowView, greenView]
        semaphoreColors.forEach { $0.alpha = 0.3 }
    }
    
    @IBAction func showCollorsDidTapped(_ sender: UIButton) {
        // Turn off all signals at the beginning
        semaphoreColors.forEach { $0.alpha = 0.3 }
        
        // Turn on the first signal when the button is pressed
        semaphoreColors[currentSignalIndex].alpha = 1.0
        
        // Toggle through the signals starting from the first signal
        currentSignalIndex = (currentSignalIndex + 1) % semaphoreColors.count
        
    
        sender.setTitle("NEXT", for: .normal)
    }
}

