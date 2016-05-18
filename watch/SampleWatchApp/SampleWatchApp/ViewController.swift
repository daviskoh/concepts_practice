//
//  ViewController.swift
//  SampleWatchApp
//
//  Created by Davis Koh on 5/17/16.
//  Copyright © 2016 com.DavisKoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let label = UILabel(frame: CGRect(
      x: 50,
      y: 30,
      width: 220,
      height: 44))
    label.text = "meow"

    self.view.backgroundColor = UIColor.whiteColor()

    self.view.addSubview(label)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

