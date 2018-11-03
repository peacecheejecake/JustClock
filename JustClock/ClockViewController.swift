//
//  ClockViewController.swift
//  JustClock
//
//  Created by Jiyoung.Jiwon on 2018. 7. 21..
//  Copyright © 2018년 Jiyoung.Jiwon. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {
    let clockView = ClockView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let clockView = ClockView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        clockView.center = CGPoint(x: view.center.x, y: view.center.y)
        view.addSubview(clockView)
        
        view.backgroundColor = UIColor.lightGray
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        clockView.center = CGPoint(x: size.width / 2, y: size.height / 2)
    }
}
