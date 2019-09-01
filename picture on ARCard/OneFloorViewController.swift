//
//  OneFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/29.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class OneFloorViewController: UIViewController, PickerViewKeyboardDelegate {
    @IBOutlet weak var onefloorImageVIew: UIImageView!
    @IBOutlet weak var aux: UIButton!
    @IBOutlet weak var bib: UIButton!
    @IBOutlet weak var correy: UIButton!
    @IBOutlet weak var gate: UIButton!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    @IBOutlet weak var FloorChange: PickerViewKeyboard!
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    
    let gateImage = UIImage(named: "art.scnassets/1F/Gate2_fielder's_choice.png")
    let correyImage = UIImage(named: "art.scnassets/1F/カレー居酒屋_Yellow.png")
    
    let bibImage = UIImage(named: "art.scnassets/1F/bib_baR.png")
    
    let auxImage = UIImage(named: "art.scnassets/1F/Aux_Bacchanales.png")
    
    let onefloorImage = UIImage(named: "art.scnassets/階層画像/1f.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconDescription_layer3.image = iconDescription
        
        onefloorImageVIew.image = onefloorImage
        
        gate.setImage(gateImage, for: .normal)
        
        correy.setImage(correyImage, for: .normal)
        
        bib.setImage(bibImage, for: .normal)
        
        aux.setImage(auxImage, for: .normal)

        // Do any additional setup after loading the view.
        FloorChange.delegate = self as! PickerViewKeyboardDelegate
    }
    

    @IBAction func GatetwoTapped() {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-yvFd0QMDfUc/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func CurryTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-XckY4IQ7Tdo/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BibTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-GKUDsR6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func AuxTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-q-JYZh6MdxM/?genrecd=01") else { return }
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
