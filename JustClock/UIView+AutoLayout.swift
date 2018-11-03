//
//  UIView+AutoLayout.swift
//  JustClock
//
//  Created by Jiyoung.Jiwon on 2018. 7. 21..
//  Copyright © 2018년 Jiyoung.Jiwon. All rights reserved.
//

import UIKit

extension UIView {
    func pinTo(_ otherView: UIView) {
        topAnchor.constraint(equalTo: otherView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: otherView.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: otherView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: otherView.trailingAnchor).isActive = true
    }
}
