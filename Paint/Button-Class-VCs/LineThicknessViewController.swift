//
//  LineThicknessViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/21/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

protocol LineThicknessViewControllerDelegate: class {
    func lineThicknessViewController(controller: LineThicknessViewController, didSelectThickness thickness: Int)
}

class LineThicknessViewController: UIViewController {

    weak var delegate: LineThicknessViewControllerDelegate?

    @IBOutlet weak var btnLineThicknessChooser: UIButton!

    @IBAction func closeLineThicknessChooser(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func selectThicknessSize1(_ sender: UIButton) {
        chooseThickness(thickness: 1)
    }

    @IBAction func selectThicknessSize2(_ sender: UIButton) {
        chooseThickness(thickness: 2)
    }

    @IBAction func selectThicknessSize5(_ sender: UIButton) {
        chooseThickness(thickness: 5)
    }

    @IBAction func selectThicknessSize10(_ sender: UIButton) {
        chooseThickness(thickness: 10)
    }

    @IBAction func selectThicknessSize20(_ sender: UIButton) {
        chooseThickness(thickness: 20)
    }

    private func chooseThickness(thickness: Int){
        delegate?.lineThicknessViewController(controller: self, didSelectThickness: thickness)
        dismiss(animated: true, completion: nil)
        print("inside 2")
    }
}
