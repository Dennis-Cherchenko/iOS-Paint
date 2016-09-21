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
        delegate?.lineThicknessViewController(controller: self, didSelectThickness: 10)
        dismiss(animated: true, completion: nil)
    }
}
