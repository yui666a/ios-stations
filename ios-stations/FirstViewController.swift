//
//  FirstViewController.swift
//  ios-stations
//

import UIKit

class FirstViewController: UIViewController { // UIViewControllerを継承

//    @IBOutlet weak var clickButton: UIButton!
//    @IBOutlet weak var click_button: UIButton!
    @IBOutlet weak var clickbutton: UIButton!

    @IBAction func buttonClicked(_ sender: UIButton) {
        clickbutton.backgroundColor = UIColor.random
    }
    @IBAction func presentSecondViewController(_ sender: Any) {
        let svc = SecondViewController(url:"https://techbowl.co.jp/")
        self.present(svc,animated: true, completion: nil)

    }
    
    
    var books: [Book]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = UIColor.Theme.main  //背景を変な色に
        
        let bookapiclient = BookAPIClient()
//        self.books = bookapiclient.fetchBooks(offset: 0, completion: <#([Book]?) -> Void#>)
        bookapiclient.fetchBooks(offset: 0) { response in
            self.books = response
        }

    }

}

/*
 * 複数クラスを継承できないので，extensionで拡張
 */
extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}


