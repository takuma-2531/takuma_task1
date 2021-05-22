//
//  ViewController.swift
//  takuma_task1
//
//  Created by 小川卓馬 on 2021/05/22.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var numberTextFieldCollection: [UITextField]!
    @IBOutlet weak private var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        numberTextFieldCollection.forEach {
            $0.keyboardType = .numberPad
        }
    }

    @IBAction private func tapSumButton(_ sender: UIButton) {
        let numbers = numberTextFieldCollection.map { Int($0.text!) ?? 0 }
        let sum = numbers.reduce(0) { num1, num2 -> Int in
            num1 + num2
        }
        answerLabel.text = String(sum)
    }
}
