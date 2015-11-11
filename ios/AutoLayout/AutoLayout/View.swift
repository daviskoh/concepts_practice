//
//  View.swift
//  AutoLayout
//
//  Created by Davis Koh on 11/11/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

import UIKit

class View: UIView {
    
    var blueView: UIView?
    
    // below is UIView's designated initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        self.setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        self.blueView = UIView()
        self.blueView?.backgroundColor = UIColor.blueColor()
        // when using auto resizing masks used to resize based on
        // orientation (protrait or landscape)
        // we want control over that when using autolayout
        self.blueView?.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.blueView!)
        
        // center blue subview
        // center x
        let centerXConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0,
            constant: 0
        )
        // center y
        let centerYConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1.0,
            constant: 0
        )
        
        // width
        let widthConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 200
        )
        
        // height
        let heightConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 200
        )

        self.addConstraints([centerXConstraint, centerYConstraint, widthConstraint, heightConstraint])
    }
}
