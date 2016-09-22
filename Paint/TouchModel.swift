//
//  TouchModel.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/21/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

class TouchModel: UIViewController {


    private let eraseColor = UIColor.white
    private var lineColor = UIColor.black
    private var lineWidth = 1
    private var lastPoint = CGPoint.zero
    private var swiped = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }



//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//    swiped = false
//    if let touch = touches.first {
//    lastPoint = touch.location(in: self.view)
//    }
//    }

}
