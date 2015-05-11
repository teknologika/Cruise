//  ViewController.swift
//  Cruise iOS
//
//  Created by Bruce McLeod on 13/04/2015.
//  Copyright (c) 2015 ThoughtWorks. All rights reserved.
//

import UIKit
import CruiseKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Blur
        // self.view.backgroundColor = .clearColor()
        
        // let visuaEffectView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.Dark))
        // visuaEffectView.frame = self.view.bounds
        // visuaEffectView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        // visuaEffectView.setTranslatesAutoresizingMaskIntoConstraints(true)
        // self.view.addSubview(visuaEffectView)
    }
    @IBAction func cancelPopover(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}