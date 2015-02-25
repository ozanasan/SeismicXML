//
//  APLSwiftCell.swift
//  SeismicXML
//
//  Created by Ozan Asan on 21/02/15.
//  Copyright (c) 2015 Apple Inc. All rights reserved.
//

import UIKit


class APLSwiftCell: UITableViewCell {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var magnitudeLabel: UILabel!
    @IBOutlet weak var magnitudeImage: UIImageView!
    
    
    lazy private var dateFormatter : NSDateFormatter = {
        var temporaryFormat: NSDateFormatter = NSDateFormatter()
        temporaryFormat.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        temporaryFormat.dateStyle = NSDateFormatterStyle.MediumStyle
        temporaryFormat.timeStyle = NSDateFormatterStyle.MediumStyle
        return temporaryFormat
    }()

    func configureWithEarthquake(earthquake :APLEarthquake){
        
        let numberFormat = NSNumberFormatter()
        numberFormat.numberStyle = NSNumberFormatterStyle.DecimalStyle
        numberFormat.maximumFractionDigits = 1
        
        var tempEarthquakeDate :String = self.dateFormatter.stringFromDate(earthquake.date)
        self.locationLabel.text = earthquake.location
        self.dateLabel.text = tempEarthquakeDate
        self.magnitudeLabel.text = numberFormat.stringFromNumber(earthquake.magnitude)
        self.magnitudeImage.image = imageForMagnitude(earthquake.magnitude)
    }
    
    func imageForMagnitude(magnitude: CGFloat) -> UIImage{
        
        if(magnitude >= 5.0){
            return UIImage(named:"5.0.png")!
        }
        else if(magnitude >= 4.0){
            return UIImage(named:"4.0.png")!
        }
        else if(magnitude >= 3.0){
            return UIImage(named:"3.0.png")!
        }
        else if(magnitude >= 2.0){
            return UIImage(named:"2.0.png")!
        }
        return UIImage()
    }
}
