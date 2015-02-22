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
    @IBOutlet weak var magnitudeImage: UILabel!
    
    let dateFormatter : NSDateFormatter!
    
    func configureWithEarthquake(earthquake :APLEarthquake){
        self.locationLabel.text = earthquake.location
        self.dateLabel.text = "/(self.dateFormatter.stringFromDate(arthquake.date))"
        self.magnitudeLabel.text = "/(earthquake.magnitude)"
        //self.magnitudeImage.text =
    }
    /*
    func imageForMagnitude(magnitude: CGFloat) -> UIImage{
        switch
        
    }
    */
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
