//
//  SecondSliderView.swift
//  kadai8
//
//  Created by 松村直樹 on 2022/09/18.
//

import UIKit

class SecondSliderView: UIViewController {
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    // swiftlint:disable:next force_cast
    let delegate = UIApplication.shared.delegate as! AppDelegate

    @IBAction private func changeSlider(_ sender: Any) {
        self.textLabel.text = "\(self.slider.value)"
        delegate.sliderValue = self.slider.value
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.slider.value = delegate.sliderValue
        self.textLabel.text = "\(self.slider.value)"
    }
}
