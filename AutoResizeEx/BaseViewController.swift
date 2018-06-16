//
//  BaseViewController.swift
//  AutoResizeEx
//
//  Created by 정동근 on 2018. 6. 16..
//  Copyright © 2018 Dennis Jung. All rights reserved.
// Email : topsan72@gmail.com / Tel : 1-770-756-0073

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resizeAllViews_iP8()
    }
    
    // Resize All Views Automately (Default Screen size is iPhone-8)
    func resizeAllViews_iP8() {
        for subView in view.subviews {
            resizeView_iP8( subView )
        }
    }
    
    // Resize One View Automately (Default Screen size is iPhone-8)
    func resizeView_iP8(_ ctrl: UIView) {
        let iP8Width: CGFloat = 375.0
        let iP8Height: CGFloat = 667.0
        let thisWidth: CGFloat = view.frame.size.width
        let thisHeight: CGFloat = view.frame.size.height
        let rateW = thisWidth / iP8Width
        let rateH = thisHeight / iP8Height
        
        let ctrlX = ctrl.frame.origin.x * rateW
        let ctrlY = ctrl.frame.origin.y * rateH
        let ctrlWidth = ctrl.frame.size.width * rateW
        let ctrlHeight = ctrl.frame.size.height * rateH
        
        ctrl.frame.origin.x = ctrlX
        ctrl.frame.origin.y = ctrlY
        ctrl.frame.size.width = ctrlWidth
        ctrl.frame.size.height = ctrlHeight
    }
}
