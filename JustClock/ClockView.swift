//
//  ClockView.swift
//  JustClock
//
//  Created by Jiyoung.Jiwon on 2018. 7. 21..
//  Copyright © 2018년 Jiyoung.Jiwon. All rights reserved.
//

import UIKit

final class ClockView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    func setup() {
        var dateLabel = UILabel()
        var timeLabel = UILabel()
        
//        dateLabel.frame.origin = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        dateLabel.font = UIFont.monospacedDigitSystemFont(ofSize: 35, weight: .ultraLight)
        dateLabel.textColor = UIColor.white
        self.addSubview(dateLabel)
        
        timeLabel.font = UIFont.monospacedDigitSystemFont(ofSize: 75, weight: .light)
        timeLabel.textColor = UIColor.white
        self.addSubview(timeLabel)
        
        self.backgroundColor = UIColor.clear
        
        func updateTime() {
            let padNumber = { String(format: "%02d", $0) }
            
            let (hour, minute, second) = Date().timeComponents
            let (year, month, day) = Date().dateComponents
            
            dateLabel.text = "\(padNumber(year)) \(padNumber(month)) \(padNumber(day))"
            timeLabel.text = "\(padNumber(hour)) \(padNumber(minute)) \(padNumber(second))"
            
            dateLabel.sizeToFit()
            timeLabel.sizeToFit()
            
            dateLabel.center = CGPoint(x: self.center.x - self.frame.origin.x, y: self.center.y - self.frame.origin.y - 70)
            timeLabel.center = CGPoint(x: self.center.x - self.frame.origin.x, y: self.center.y - self.frame.origin.y)
        }
        
        _ = Timer.scheduledTimer(withTimeInterval: TimeInterval(1.0), repeats: true) { (_) in
            DispatchQueue.main.async() { updateTime() }
        }
        
        updateTime()
    }
    

}
