//
//  Date+HMS.swift
//  JustClock
//
//  Created by Jiyoung.Jiwon on 2018. 7. 21..
//  Copyright © 2018년 Jiyoung.Jiwon. All rights reserved.
//

import UIKit

extension Date {
    var timeComponents: (Int, Int, Int) {
        let components = Calendar.current.dateComponents([.hour, .minute, .second], from: self)
        
        guard let hour = components.hour, let minute = components.minute, let second = components.second else {
            fatalError()
        }
        
        return (hour, minute, second)
    }
    
    var dateComponents: (Int, Int, Int) {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: self)
        
        guard let year = components.year, let month = components.month, let day = components.day else {
            fatalError()
        }
        
        return (year, month, day)
    }
}
