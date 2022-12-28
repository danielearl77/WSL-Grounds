//
//  TeamInfoViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 11/08/2022.
//

import UIKit
import StoreKit

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
        showAppReviewPopover()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showAppReviewPopover() {
        var count = UserDefaults.standard.integer(forKey: "userAppLoadCount")
        count += 1
        UserDefaults.standard.set(count, forKey: "userAppLoadCount")
       
        // Get the current bundle version for the app
        let infoDictionaryKey = kCFBundleVersionKey as String
        guard let currentVersion = Bundle.main.object(forInfoDictionaryKey: infoDictionaryKey) as? String
            else { fatalError("Expected to find a bundle version in the info dictionary") }
        
        let lastVersionPromptedForReview = UserDefaults.standard.string(forKey: "lastVersionPromptedForReview")
     
        // Has the process been completed several times and the user has not already been prompted for this version?
        if count >= 5 && currentVersion != lastVersionPromptedForReview {
            // SKStoreReviewController.requestReview()
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
            UserDefaults.standard.set(currentVersion, forKey: "lastVersionPromptedForReview")
        }
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
