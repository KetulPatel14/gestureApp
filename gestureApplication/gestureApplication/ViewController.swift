//
//  ViewController.swift
//  gestureApplication
//
//  Created by Canadore Student on 2023-04-10.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tapCount = 0

    @IBOutlet weak var tapCountLabel: UILabel!
    @IBOutlet var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
        
        
        myView.addGestureRecognizer(tapGestureRecognizer)
        tapGestureRecognizer.numberOfTapsRequired = 2
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if(sender.numberOfTapsRequired == 1){
            tapCount += 1
            tapCountLabel.text = "\(tapCount)"
        }
        else if(sender.numberOfTapsRequired == 2){
            tapCount = 0
            tapCountLabel.text = "\(tapCount)"
            print("Double Tap")
            self.performSegue(withIdentifier: "showSecond", sender: self)
        }
    }
    
    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer) {
    }
    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

