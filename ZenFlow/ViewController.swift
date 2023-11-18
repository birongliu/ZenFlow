//
//  ViewController.swift
//  ZenFlow
//
//  Created by Bi Rong Liu on 11/17/23.
//

import UIKit

private struct Color {
    let red: CGFloat;
    let green: CGFloat;
    let blue: CGFloat;
    let alpha: CGFloat;
}

class ViewController: UIViewController {
  
    @IBOutlet var changeNameTextColor: UILabel!
    @IBOutlet var changeMajorTextColor: UILabel!
    @IBOutlet var changeSchoolTextColor: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let color: Color = getColor();
        let reverseUIColor = UIColor(
            red: 1 + color.red,
            green: 1 + color.green,
            blue: 1 + color.blue,
            alpha: color.alpha
        );
        let currentUIColor = UIColor(
            red: color.red,
            green: color.green,
            blue: color.blue,
            alpha: color.alpha
        );
        sender.backgroundColor = reverseUIColor;
        changeNameTextColor .textColor = reverseUIColor;
        changeMajorTextColor .textColor = reverseUIColor;
        changeSchoolTextColor.textColor = reverseUIColor;
        view.backgroundColor = currentUIColor;
    }
    
    private func getColor() -> Color {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return Color(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
}

