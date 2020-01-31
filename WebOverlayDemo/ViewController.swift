//
//  ViewController.swift
//  WebOverlayDemo
//
//  Created by Khurram on 23/01/2020.
//  Copyright © 2020 Example. All rights reserved.
//

import WebOverlay
import UIKit

class ViewController: UIViewController {
  
@IBAction func showButtonTap(_ sender: Any) {
  WebOverlay.sharedInstance.show()
}
} // class ViewController
