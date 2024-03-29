//
//  SecondFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class SecondFloorViewController: UIViewController, PickerViewKeyboardDelegate {
    @IBOutlet weak var qu: UIButton!
    @IBOutlet weak var theodor: UIButton!
    @IBOutlet weak var komin: UIButton!
    @IBOutlet weak var FloorChange: PickerViewKeyboard!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    let kominImage = UIImage(named: "art.scnassets/2F/Komin'_Cafe.png")
    let theodorImage = UIImage(named: "art.scnassets/2F/Theodor_Tea_Stand.png")
    let quImage = UIImage(named: "art.scnassets/2F/Qu'il_fait_bon.png")
    
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconDescription_layer3.image = iconDescription
        
        komin.setImage(kominImage,for: .normal)
        theodor.setImage(theodorImage,for: .normal)
        qu.setImage(quImage,for: .normal)

        // Do any additional setup after loading the view.
        FloorChange.delegate = self as! PickerViewKeyboardDelegate
    }
    
    @IBAction func KominTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-qJB7JZSF6L-/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TheodorTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-BgIjz_7c9XE/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func QuilfaitTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-RwDBPx6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    func titlesOfPickerViewKeyboard(sender: PickerViewKeyboard) -> Array<String> {
        return dataSource
    }
    func initSelectedRow(sender: PickerViewKeyboard) -> Int {
        return 0
    }
    func didDone(sender: PickerViewKeyboard, selectedData: String) {
        switch selectedData {
        case "B1F":
            let storyboard: UIStoryboard = self.storyboard!
            let bone = storyboard.instantiateViewController(withIdentifier: "bone")
            self.present(bone, animated: true, completion: nil)
        case "1F":
            let storyboard: UIStoryboard = self.storyboard!
            let one = storyboard.instantiateViewController(withIdentifier: "one")
            self.present(one, animated: true, completion: nil)
        case "2F":
            let storyboard: UIStoryboard = self.storyboard!
            let two = storyboard.instantiateViewController(withIdentifier: "two")
            self.present(two, animated: true, completion: nil)
        case "3F":
            let storyboard: UIStoryboard = self.storyboard!
            let three = storyboard.instantiateViewController(withIdentifier: "three")
            self.present(three, animated: true, completion: nil)
        case "4F":
            let storyboard: UIStoryboard = self.storyboard!
            let four = storyboard.instantiateViewController(withIdentifier: "four")
            self.present(four, animated: true, completion: nil)
        case "5F":
            let storyboard: UIStoryboard = self.storyboard!
            let five = storyboard.instantiateViewController(withIdentifier: "five")
            self.present(five, animated: true, completion: nil)
        case "6F":
            let storyboard: UIStoryboard = self.storyboard!
            let six = storyboard.instantiateViewController(withIdentifier: "six")
            self.present(six, animated: true, completion: nil)
        case "7F":
            let storyboard: UIStoryboard = self.storyboard!
            let seven = storyboard.instantiateViewController(withIdentifier: "seven")
            self.present(seven, animated: true, completion: nil)
        case "8F":
            let storyboard: UIStoryboard = self.storyboard!
            let eight = storyboard.instantiateViewController(withIdentifier: "eight")
            self.present(eight, animated: true, completion: nil)
        case "9F":
            let storyboard: UIStoryboard = self.storyboard!
            let nine = storyboard.instantiateViewController(withIdentifier: "nine")
            self.present(nine, animated: true, completion: nil)
        default:
            break
        }
    }
    func didCancel(sender: PickerViewKeyboard) {
        
    }
}
