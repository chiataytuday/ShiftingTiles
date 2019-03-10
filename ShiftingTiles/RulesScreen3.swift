//
//  RulesScreen3.swift
//  ShiftingTiles
//
//  Created by Parker Lewis on 1/19/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit

class RulesScreen3: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            self.label1.font = UIFont(name: "OpenSans", size: 15)
            self.label2.font = UIFont(name: "OpenSans", size: 15)
            self.label3.font = UIFont(name: "OpenSans", size: 15)
        }

        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            self.label1.font = UIFont(name: "OpenSans", size: 30)
            self.label2.font = UIFont(name: "OpenSans", size: 30)
            self.label3.font = UIFont(name: "OpenSans", size: 30)
        }
        

        self.image1.image = self.image1.image?.imageWithColor(Colors.fetchDarkColor())
        self.image2.image = self.image2.image?.imageWithColor(Colors.fetchDarkColor())
        self.image3.image = self.image3.image?.imageWithColor(Colors.fetchDarkColor())
        
        self.label1.textColor = Colors.fetchDarkColor()
        self.label2.textColor = Colors.fetchDarkColor()
        self.label3.textColor = Colors.fetchDarkColor()
        
        self.label1.text = NSLocalizedString("Rules3_Part1", comment: "")
        self.label2.text = NSLocalizedString("Rules3_Part2", comment: "")
        self.label3.text = NSLocalizedString("Rules3_Part3", comment: "")


    }
}
