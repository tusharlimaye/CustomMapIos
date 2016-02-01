//
//  ViewController.swift
//  CustomMap
//
//  Created by Tushar Limaye on 2016/02/01.
//  Copyright © 2016 Winjit. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapViw: CustomMap!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapViw.setMapData(20.0000, longitude: 73.7800)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

