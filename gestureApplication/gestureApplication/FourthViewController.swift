//
//  FourthViewController.swift
//  gestureApplication
//
//  Created by Canadore Student on 2023-04-10.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    private let myView: UIView = {
        let myView = UIView()
        myView.backgroundColor = UIColor.blue
        return myView
    }()
    private let size: CGFloat = 200
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myView)
        myView.frame = CGRect(x: 0, y: 0, width: size, height: size)
        myView.center = view.center

        // Do any additional setup after loading the view.
    }

    @IBAction func didPinch(_ sender: UIPinchGestureRecognizer) {
        if(sender.state == .changed){
            let scale = sender.scale
            myView.frame = CGRect(x: 0, y: 0, width: size, height: size)
            myView.center = view.center
            
        }
    }
    @IBAction func didRotate(_ sender: UIRotationGestureRecognizer) {
        if(sender.state == .changed){
            myView.transform = CGAffineTransform(rotationAngle: sender.rotation)
            print("Angle: \(sender.rotation)")
            
        }
    }
    
    
    @IBAction func didEdgePan(_ sender: UIScreenEdgePanGestureRecognizer) {
        if(sender.state == .recognized){
            print("Screen Edge Swipe")
//            let scale = sender.scale
//            myView.frame = CGRect(x: 0, y: 0, width: size, height: size)
//            myView.center = view.center
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
