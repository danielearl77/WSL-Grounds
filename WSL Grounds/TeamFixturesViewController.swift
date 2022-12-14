//
//  TeamFixturesViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 12/08/2022.
//

import UIKit
import WebKit

class TeamFixturesViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var pageLoadingSpinner: UIActivityIndicatorView!
    
    func loadFixturesData() {
        errorMsg.isHidden = true
        pageLoadingSpinner.startAnimating()
        pageLoadingSpinner.isHidden = false
        let fixturesURL = (parent as! TeamViewController).teamFixtures
        let myURL = URL(string: fixturesURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        pageLoadingSpinner.stopAnimating()
        pageLoadingSpinner.isHidden = true
        errorMsg.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                          didFailProvisionalNavigation navigation: WKNavigation!,
                          withError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet) {
            NSLog("No Internet Connection")
            pageLoadingSpinner.stopAnimating()
            pageLoadingSpinner.isHidden = true
            errorMsg.text = "ERROR: No Internet Connection"
            errorMsg.isHidden = false
        }
        errorMsg.text = "ERROR: Unable to load page"
        errorMsg.isHidden = false
        pageLoadingSpinner.stopAnimating()
        pageLoadingSpinner.isHidden = true
        NSLog("Error Loading:")
        print(error._code)
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        pageLoadingSpinner.stopAnimating()
        pageLoadingSpinner.isHidden = true
        errorMsg.text = "ERROR: Unable to load page"
        errorMsg.isHidden = false
        NSLog("Error Loading: Navigation Error")
        print(error._code)
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
        loadFixturesData()
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
