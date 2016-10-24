//
//  DateFormatter.swift
//
//  Created by Kenan Karakecili on 15/03/16.
//  Copyright © 2016 Kenan Karakecili. All rights reserved.
//

import Foundation

class KKDateFormatter {
  
  enum DateCompare {
    case Equal
    case Left
    case Right
  }
  
  private static let current = KKDateFormatter()
  private let formatter = NSDateFormatter()
  private init() {}
  
  class func convertDate(dateToFormat: AnyObject, fromFormat: String, toFormat: String) -> String {
    KKDateFormatter.current.formatter.dateFormat = fromFormat
    var date: NSDate? = nil
    if dateToFormat is String {
      date = KKDateFormatter.current.formatter.dateFromString(dateToFormat as! String)
    } else {
      date = dateToFormat as? NSDate
    }
    KKDateFormatter.current.formatter.dateFormat = toFormat
    if let myDate = date {
      let formattedDateString = KKDateFormatter.current.formatter.stringFromDate(myDate)
      return formattedDateString
    }
    return ""
  }
  
  class func compareDate(date1: AnyObject, date2: AnyObject, format: String) -> DateCompare {
    KKDateFormatter.current.formatter.timeZone = NSTimeZone.localTimeZone()
    KKDateFormatter.current.formatter.dateFormat = format
    var dateOne: NSDate?
    var dateTwo: NSDate?
    if date1 is NSDate {
      dateOne = date1 as? NSDate
    } else {
      dateOne = KKDateFormatter.current.formatter.dateFromString(date1 as! String)
    }
    if date2 is NSDate {
      dateTwo = date2 as? NSDate
    } else {
      dateTwo = KKDateFormatter.current.formatter.dateFromString(date2 as! String)
    }
    let comparisonResult = dateOne!.compare(dateTwo!)
    if comparisonResult == .OrderedSame {
      return .Equal
    } else if comparisonResult == .OrderedAscending {
      return .Right
    } else {
      return .Left
    }
  }
  
}
