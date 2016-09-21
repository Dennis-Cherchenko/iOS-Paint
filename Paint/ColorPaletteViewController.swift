//
//  ColorPaletteViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/21/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

protocol ColorPaletteViewControllerDelegate: class {
    func colorPaletterViewController(controller: ColorPaletteViewController, didSelectColor color: UIColor )
}

class ColorPaletteViewController: UIViewController {

    weak var delegate: ColorPaletteViewControllerDelegate?

    @IBOutlet weak var btnColorPalette: UIButton!

    @IBAction func closeColorPalette(_ sender: UIButton) {
        delegate?.colorPaletterViewController(controller: self, didSelectColor: UIColor.blue)
        dismiss(animated: true, completion: nil)
    }
}
