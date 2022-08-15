//
//  TeamInfoViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 11/08/2022.
//

import UIKit

class TeamInfoViewController: UIViewController {

    @IBOutlet weak var teamInfoText: UITextView!
    
    override func viewDidLoad() {
        let carInfo = (parent as! TeamViewController).teamCarInfo
        let trainInfo = (parent as! TeamViewController).teamTrainInfo
        let drinkInfo = (parent as! TeamViewController).teamDrinkInfo
        
        let headerFont = UIFont.boldSystemFont(ofSize: 18.0)
        let bodyFont = UIFont.systemFont(ofSize: 15.0)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        
        let headerAttributes = [NSAttributedString.Key.font: headerFont]
        let bodyAttributes: [NSAttributedString.Key: Any] = [
            .font: bodyFont,
            .paragraphStyle: paragraphStyle]
        
        let carTitle = "By Car\n"
        //let trainTitle = "By Train\n"
        //let drinkTitle = "Food & Drink\n"
        
        let infoText = NSMutableAttributedString(string: carTitle, attributes: headerAttributes)
        let carContentText = NSMutableAttributedString(string: carInfo, attributes: bodyAttributes)
        let trainTitle = NSMutableAttributedString(string: "\n\nBy Train\n", attributes: headerAttributes)
        let trainContentText = NSMutableAttributedString(string: trainInfo, attributes: bodyAttributes)
        let drinkTitle = NSMutableAttributedString(string: "\n\nFood & Drink\n", attributes: headerAttributes)
        let drinkContentText = NSMutableAttributedString(string: drinkInfo, attributes: bodyAttributes)
        
        infoText.append(carContentText)
        infoText.append(trainTitle)
        infoText.append(trainContentText)
        infoText.append(drinkTitle)
        infoText.append(drinkContentText)
        
        teamInfoText.attributedText = infoText
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
