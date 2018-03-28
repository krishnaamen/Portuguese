//
//  ViewController.swift
//  Portuguese
//
//  Created by Krishna Prasad Khanal on 24/03/2018.
//  Copyright © 2018 Krishna Prasad Khanal. All rights reserved.
//

import UIKit
import GoogleMobileAds


class ViewController: UIViewController {

    @IBOutlet weak var trybtn: UIButton!
    @IBOutlet weak var WSbtn: UIButton!
    @IBOutlet weak var bannerView: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(request)
        
        trybtn.applyDesign1()
        WSbtn.applyDesign1()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIButton {
    func applyDesign1(){
        
        self.layer.cornerRadius = self.frame.height / 2
        
        
    }
}
