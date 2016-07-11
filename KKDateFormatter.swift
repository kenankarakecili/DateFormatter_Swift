//
//  DateFormatter.swift
//  Motto
//
//  Created by Kenan Karakecili on 15/03/16.
//  Copyright © 2016 Kenan Karakecili. All rights reserved.
//

import Foundation

class DateFormatter {
  
  private static let current = DateFormatter()
  private let formatter = NSDateFormatter()
  private init() {}
  class func convertDate(dateToFormat: AnyObject, fromFormat: String, toFormat: String) -> String {
    DateFormatter.current.formatter.dateFormat = fromFormat
    var date: NSDate? = nil
    if object_getClassName(dateToFormat) == object_getClassName("") {
      date = DateFormatter.current.formatter.dateFromString(dateToFormat as! String)
    } else {
      date = dateToFormat as? NSDate
    }
    DateFormatter.current.formatter.dateFormat = toFormat
    let formattedDateString: String? = DateFormatter.current.formatter.stringFromDate(date!)
    return formattedDateString != nil ? formattedDateString! : dateToFormat as! String
  }
  
}
