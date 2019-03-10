//
//  RulesScreen2.swift
//  ShiftingTiles
//
//  Created by Parker Lewis on 1/16/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit

class RulesScreen2: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            self.label1.font = UIFont(name: "OpenSans", size: 15)
            self.label2.font = UIFont(name: "OpenSans", size: 15)
            self.label3.font = UIFont(name: "OpenSans", size: 15)
            self.label4.font = UIFont(name: "OpenSans", size: 15)
        }
        
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            self.label1.font = UIFont(name: "OpenSans", size: 30)
            self.label2.font = UIFont(name: "OpenSans", size: 30)
            self.label3.font = UIFont(name: "OpenSans", size: 30)
            self.label4.font = UIFont(name: "OpenSans", size: 30)
        }
        
        self.image1.image = self.image1.image?.imageWithColor(Colors.fetchDarkColor())
        self.image2.image = self.image2.image?.imageWithColor(Colors.fetchDarkColor())
        self.image3.image = self.image3.image?.imageWithColor(Colors.fetchDarkColor())
        self.image4.layer.borderColor = Colors.fetchDarkColor().cgColor
        self.image4.layer.borderWidth = 2
        self.image4.layer.cornerRadius = self.image4.frame.width * 0.25
        self.image4.image = self.image4.image?.imageWithColor(Colors.fetchDarkColor())
        
        self.label1.textColor = Colors.fetchDarkColor()
        self.label2.textColor = Colors.fetchDarkColor()
        self.label3.textColor = Colors.fetchDarkColor()
        self.label4.textColor = Colors.fetchDarkColor()
        
        
        self.label1.text = NSLocalizedString("Rules2_Part1", comment: "")
        self.label2.text = NSLocalizedString("Rules2_Part2", comment: "")
        self.label3.text = NSLocalizedString("Rules2_Part3", comment: "")
        self.label4.text = NSLocalizedString("Rules2_Part4", comment: "")


    }
}
