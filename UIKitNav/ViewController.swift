//
//  ViewController.swift
//  UIKitNav
//
//  Created   on 11/10/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction
    func userTappedPushViewA(_ sender: UIButton) {
        let vc = UIHostingController(rootView: ViewA())
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction
    func userTappedPushViewB(_ sender: UIButton) {
        let vc = UIHostingController(rootView: ViewB())
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction
    func userTappedPushViewC(_ sender: UIButton) {
        let vc = UIHostingController(rootView: ViewC())
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction
    func userTappedPushViewD(_ sender: UIButton) {
        let vc = UIHostingController(rootView: ViewD())
        navigationController?.pushViewController(vc, animated: true)
    }
}

