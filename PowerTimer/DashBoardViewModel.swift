//
//  DashBoardViewModel.swift
//  PowerTimer
//
//  Created by DevLee on 2021/05/12.
//

import UIKit

struct TimerInfo {
    let title:String
    let remainTime:String
    let regiDate:String
    let bgColor:UIColor
}



class DashBoardViewModel {
    
    
    
    func dataSource() -> [TimerInfo] {
        
        return [TimerInfo(title: "제목1", remainTime: "00:00", regiDate: "2021.04.22", bgColor: .systemBlue),
                TimerInfo(title: "제목2", remainTime: "10:00", regiDate: "11:00:02", bgColor: .systemGreen),
                TimerInfo(title: "제목3", remainTime: "20:00", regiDate: "2021.03.22", bgColor: .systemPink),
                TimerInfo(title: "제목1", remainTime: "00:00", regiDate: "2021.04.22", bgColor: .systemBlue),
                        TimerInfo(title: "제목2", remainTime: "10:00", regiDate: "11:00:02", bgColor: .systemGreen),
                        TimerInfo(title: "제목3", remainTime: "20:00", regiDate: "2021.03.22", bgColor: .systemPink),
                        TimerInfo(title: "제목1", remainTime: "00:00", regiDate: "2021.04.22", bgColor: .systemBlue),
                                TimerInfo(title: "제목2", remainTime: "10:00", regiDate: "11:00:02", bgColor: .systemGreen),
                                TimerInfo(title: "제목3", remainTime: "20:00", regiDate: "2021.03.22", bgColor: .systemPink),
                                TimerInfo(title: "제목1", remainTime: "00:00", regiDate: "2021.04.22", bgColor: .systemBlue),
                                        TimerInfo(title: "제목2", remainTime: "10:00", regiDate: "11:00:02", bgColor: .systemGreen),
                                        TimerInfo(title: "제목3", remainTime: "20:00", regiDate: "2021.03.22", bgColor: .systemPink)]
        
    }
    
    
    
}
