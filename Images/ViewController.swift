//
//  ViewController.swift
//  Images
//
//  Created by Nathanial L. McConnell on 9/20/14.
//  Copyright (c) 2014 Nathanial L. McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var counter = 1
  
  @IBOutlet weak var alien: UIImageView!
  
  @IBAction func buttonPressed(sender: AnyObject) {
    counter++
    
    if (counter == 6) {
      counter = 1
    }
    
    alien.image = UIImage(named: "alien\(counter).png")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func viewDidLayoutSubviews() {
    alien.center = CGPointMake(alien.center.x - 400, alien.center.y)
    alien.alpha = 0
  }
  
  override func viewDidAppear(animated: Bool) {
    UIView.animateWithDuration(1, animations: {
      self.alien.center = CGPointMake(self.alien.center.x + 400, self.alien.center.y)
    })
    self.alien.alpha = 1
  }
}

