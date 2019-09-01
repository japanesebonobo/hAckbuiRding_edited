//
//  BoneViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class BoneViewController: UIViewController, PickerViewKeyboardDelegate {
    @IBOutlet weak var tully: UIButton!
    @IBOutlet weak var yamabiko: UIButton!
    @IBOutlet weak var izumi: UIButton!
    @IBOutlet weak var jiitiro: UIButton!
    @IBOutlet weak var banan: UIButton!
    @IBOutlet weak var the_buffet: UIButton!
    @IBOutlet weak var marumo: UIButton!
    @IBOutlet weak var sakanagashi: UIButton!
    @IBOutlet weak var horiuti: UIButton!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    @IBOutlet weak var FloorChange: PickerViewKeyboard!
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    let horiutiImage = UIImage(named: "art.scnassets/B1F/堀内果実園.png")!
    let sakanagashiImage = UIImage(named: "art.scnassets/B1F/魚がし日本一.png")!
    let marumoImage = UIImage(named: "art.scnassets/B1F/マルモキッチン.png")!
    let thebuffetImage = UIImage(named: "art.scnassets/B1F/The_Buffet&marche.png")!
    let bananImage = UIImage(named: "art.scnassets/B1F/Banan.png")!
    let jiitiroImage = UIImage(named: "art.scnassets/B1F/治一郎.png")!
    let izumiImage = UIImage(named: "art.scnassets/B1F/いずみカリー.png")!
    let yamabikoImage = UIImage(named: "art.scnassets/B1F/やまびこベーカリー.png")!
    let tullyImage = UIImage(named: "art.scnassets/B1F/Turry's_Coffee&Tea.png")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconDescription_layer3.image = iconDescription
        
        horiuti.setImage(horiutiImage, for: .normal)
        sakanagashi.setImage(sakanagashiImage, for: .normal)
        
        marumo.setImage(marumoImage, for: .normal)
        
        the_buffet.setImage(thebuffetImage, for: .normal)
        
        banan.setImage(bananImage, for: .normal)
        
        jiitiro.setImage(jiitiroImage, for: .normal)
        izumi.setImage(izumiImage, for: .normal)
        yamabiko.setImage(yamabikoImage, for: .normal)
        tully.setImage(tullyImage, for: .normal)

        // Do any additional setup after loading the view.
        FloorChange.delegate = self as! PickerViewKeyboardDelegate
    }
    
    @IBAction func HoriuchiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-JwvEp9rC9Fg/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func SushiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-5UkTrRLVE1M/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func MarumoTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-JunNbhVXtcY/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BuffetTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Qk6DJjqy37A/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BananTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-5Za2VxJB2vE/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    
    @IBAction func JiichiroTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Lh5RYVbEsws/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func IzumiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-usMcyE6U_hA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func YamabikoTapped(_ sender: Any) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-nXRI8LexkoA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TurryTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-NDzfl7fXEDA/?genrecd=01") else { return }
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
