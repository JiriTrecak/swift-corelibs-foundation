// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2015 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//


public enum NSDateIntervalFormatterStyle : UInt {
    
    case NoStyle
    case ShortStyle
    case MediumStyle
    case LongStyle
    case FullStyle
}

// NSDateIntervalFormatter is used to format the range between two NSDates in a locale-sensitive way.
// NSDateIntervalFormatter returns nil and NO for all methods in NSFormatter.

public class NSDateIntervalFormatter : NSFormatter {
    
    public override init() {
        NSUnimplemented()
    }

    public required init?(coder: NSCoder) {
        NSUnimplemented()
    }
    
    /*@NSCopying*/ public var locale: NSLocale! // default is [NSLocale currentLocale]
    /*@NSCopying*/ public var calendar: NSCalendar! // default is the calendar of the locale
    /*@NSCopying*/ public var timeZone: NSTimeZone! // default is [NSTimeZone defaultTimeZone]
    public var dateTemplate: String! // default is an empty string
    public var dateStyle: NSDateIntervalFormatterStyle // default is NSDateIntervalFormatterNoStyle
    public var timeStyle: NSDateIntervalFormatterStyle // default is NSDateIntervalFormatterNoStyle
    
    /*
         If the range smaller than the resolution specified by the dateTemplate, a single date format will be produced. If the range is larger than the format specified by the dateTemplate, a locale-specific fallback will be used to format the items missing from the pattern.
         
         For example, if the range is 2010-03-04 07:56 - 2010-03-04 19:56 (12 hours)
         - The pattern jm will produce
            for en_US, "7:56 AM - 7:56 PM"
            for en_GB, "7:56 - 19:56"
         - The pattern MMMd will produce
            for en_US, "Mar 4"
            for en_GB, "4 Mar"
         If the range is 2010-03-04 07:56 - 2010-03-08 16:11 (4 days, 8 hours, 15 minutes)
         - The pattern jm will produce
            for en_US, "3/4/2010 7:56 AM - 3/8/2010 4:11 PM"
            for en_GB, "4/3/2010 7:56 - 8/3/2010 16:11"
         - The pattern MMMd will produce
            for en_US, "Mar 4-8"
            for en_GB, "4-8 Mar"
    */
    public func stringFromDate(fromDate: NSDate, toDate: NSDate) -> String { NSUnimplemented() }
}
