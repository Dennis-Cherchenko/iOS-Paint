//
//  ViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/19/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, ColorPaletteViewControllerDelegate, LineThicknessViewControllerDelegate {

    var drawingCanvasVC: DrawingCanvasViewController!

    @IBAction func selectedEraser(_ sender: UIButton) {
        drawingCanvasVC.lineColor = drawingCanvasVC.eraseColor
    }

    @IBAction func clearCanvas(_ sender: UIButton) {
        drawingCanvasVC.canvas.image = nil
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationController = segue.destination as? ColorPaletteViewController {
            destinationController.delegate = drawingCanvasVC
        }
        if let destinationController = segue.destination as? LineThicknessViewController {
            destinationController.delegate = drawingCanvasVC
        }
        if let destinationController = segue.destination as? DrawingCanvasViewController {
            drawingCanvasVC = destinationController
        }

    }

    // MARK: - ColorPaletteViewControllerDelegate

    func colorPaletteViewController(controller: ColorPaletteViewController, didSelectColor color: UIColor) {
        //
    }

    // MARK: - LineThicknessViewControllerDelegate

    func lineThicknessViewController(controller: LineThicknessViewController, didSelectThickness thickness: Int) {
        //
    }
}
