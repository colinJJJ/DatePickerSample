//
//  ViewController.swift
//  DatePickerSample
//
//  Created by ColinJ on 2016/11/15.
//  Copyright © 2016年 ColinJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onclick(_ sender: AnyObject) {
        
        //通过datePicker的时间来选择时间
        let theDate : NSDate = self.datePicker.date as NSDate
        let desc = theDate.description(with: NSLocale.current)
        print("the date picked is \(desc)")
        
        let dateFormatter  = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        let myDate = dateFormatter.string(from: theDate as Date)
        print("the date formate is:\(myDate)")
        
        //获取当前的时间
        let date = NSDate()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "yyy-MM-dd 'at' HH:mm:ss.SSS" //(格式可俺按自己需求修整)
        let strNowTime = timeFormatter.string(from: date as Date) as String
        print("------now time is:\(strNowTime)")
        
        self.label.text = myDate
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

