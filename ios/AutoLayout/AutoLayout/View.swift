//
//  View.swift
//  AutoLayout
//
//  Created by Davis Koh on 11/11/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

import UIKit

class View: UIView {
    
    // below is UIView's designated initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.redColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
