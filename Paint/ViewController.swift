//
//  ViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/19/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, ColorPaletteViewControllerDelegate, LineThicknessViewControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!

    private let eraseColor = UIColor.white
    private var lineColor = UIColor.black
    private var lineWidth = 2
    private var lastPoint = CGPoint.zero
    private var swiped = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first {
            lastPoint = touch.location(in: self.view)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationController = segue.destination as? ColorPaletteViewController {
            destinationController.delegate = self
        }
    }

    func drawLines(fromPoint:CGPoint,toPoint:CGPoint) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        imageView.image?.draw(in: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: fromPoint.x, y: fromPoint.y))
        context?.addLine(to: CGPoint(x: toPoint.x, y: toPoint.y))
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(CGFloat(self.lineWidth))
        context?.setStrokeColor(lineColor.cgColor)
        context?.strokePath()
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true

        if let touch = touches.first {
            let currentPoint = touch.location(in: self.view)
            drawLines(fromPoint: lastPoint, toPoint: currentPoint)

            lastPoint = currentPoint
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            drawLines(fromPoint: lastPoint, toPoint: lastPoint)
        }
    }

    // MARK: - ColorPaletterViewControllerDelegate

    func colorPaletterViewController(controller: ColorPaletteViewController, didSelectColor color: UIColor ){
        lineColor = color
    }

    // MARK: - LineThicknessViewController
    func lineThicknessViewController(controller: LineThicknessViewController, didSelectThickness thickness: Int ){
        lineWidth = thickness
        print("got here")
    }


}
