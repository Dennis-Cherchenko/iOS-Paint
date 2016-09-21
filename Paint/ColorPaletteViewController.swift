//
//  ColorPaletteViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/21/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

protocol ColorPaletteViewControllerDelegate: class {
    func colorPaletteViewController(controller: ColorPaletteViewController, didSelectColor color: UIColor )
}

class ColorPaletteViewController: UIViewController {

    weak var delegate: ColorPaletteViewControllerDelegate?

    @IBOutlet weak var btnColorPalette: UIButton!

    @IBAction func closeColorPalette(_ sender: UIButton) {
        chooseColor(color: UIColor.blue)
    }

    @IBAction func selectRedColor(_ sender: UIButton) {
        chooseColor(color: UIColor.red)
    }

    @IBAction func selectYellowColor(_ sender: UIButton) {
        chooseColor(color: UIColor.yellow)
    }

    @IBAction func selectGreenColor(_ sender: UIButton) {
        chooseColor(color: UIColor.green)
    }
    @IBAction func selectBlueColor(_ sender: UIButton) {
        chooseColor(color: UIColor.blue)
    }

    @IBAction func selectPurpleColor(_ sender: UIButton) {
        chooseColor(color: UIColor.purple)
    }

    @IBAction func selectBlackColor(_ sender: UIButton) {
        chooseColor(color: UIColor.black)
    }

    private func chooseColor(color: UIColor){
        delegate?.colorPaletteViewController(controller: self, didSelectColor: color)
        dismiss(animated: true, completion: nil)
    }
}
