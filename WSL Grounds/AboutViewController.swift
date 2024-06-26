//
//  ViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 04/08/2022.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutTextView: UITextView!
    
    func loadAboutText() {
        let versionNumber = Bundle.main.infoDictionary!["CFBundleShortVersionString"]!
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let copyrightYear = dateFormatter.string(from: date)
        
        let bodyFont = UIFont.systemFont(ofSize: 15.0)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        let bodyAttributes: [NSAttributedString.Key: Any] = [
            .font: bodyFont,
            .foregroundColor: UIColor.label,
            .paragraphStyle: paragraphStyle]
        let creditBodyAttributes: [NSAttributedString.Key: Any] = [
            .font: bodyFont,
            .foregroundColor: UIColor.systemGray,
            .paragraphStyle: paragraphStyle]
        
        let aboutBody = "This app aims to provide travel information for fans travelling to the English Womens Super Leauge matches.  All directions given in this app are taken from either maps or personal experience.  The map view works in exactly the same way as the built-in map app on the iPhone, showing current location and allowing you to zoom in and out.\n\nPlease contact us if you think the directions are wrong or can provide clearer routes to the grounds.\n\nPlease note that the pub recommendations are just that, and we cannot be held responsible should any become home fans pubs without warning.  If you have a good pub suggestion please contact us and we’ll add it to the next update of the app.\n\nThe fixtures are linked from www.bbc.co.uk/football, and the train information is linked from www.nationalrail.co.uk\n\nThis app will be updated to take into account promotion and relegation at the end of each season.  This app is not affiliated with the FA, Womens Super League or its clubs.  No club has provided any information for this app.\n\nFor more information see our website www.phone-app.co.uk\n\nTo get in touch please use the contact form on the website.\n\n\n"
        let creditBody = "© 2012 - \(copyrightYear) D. Earl\nVersion Number \(versionNumber)"
        
        let aboutBodyText = NSMutableAttributedString(string: aboutBody, attributes: bodyAttributes)
        let creditBodyText = NSAttributedString(string: creditBody, attributes: creditBodyAttributes)
        
        aboutBodyText.append(creditBodyText)
        
        aboutTextView.attributedText = aboutBodyText
    }

    override func viewDidLoad() {
        loadAboutText()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
