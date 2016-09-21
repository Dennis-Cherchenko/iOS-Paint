//
//  LineThicknessViewController.swift
//  Paint
//
//  Created by Dennis Cherchenko on 9/21/16.
//  Copyright © 2016 Dennis Cherchenko. All rights reserved.
//

import UIKit

class LineThicknessViewController: UIViewController {

    @IBOutlet weak var btnLineThicknessChooser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func closeLineThicknessChooser(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


}
