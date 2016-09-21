//
//  ColorPaletteViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/21/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

class ColorPaletteViewController: UIViewController {

    @IBOutlet weak var btnColorPalette: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   func closeColorPalette(sender: UIButton!) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func closeColorPalette(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
