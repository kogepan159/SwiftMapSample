import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var seachToLocationButton: UIButton!
    
//    var latitudeNumber: Int?
//    var longtitudeNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //緯度・経度の値の設定で、GoogleMapsのピンを表示させる予定
        func location(latitude: String, longitude: String) {
        }
        seachToLocationButton.addTarget(self,
                                        action: #selector(didTapButton),
                                        for: .touchUpInside)//ボタン領域[内]で画面から指を押した時に呼ばれる
    }
    
    @objc func didTapButton() {
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "map") as! NextViewController
        //NextViewControllerから緯度と経度の引数に値を設定
        nextViewController.configure(latitude: 34.6862, longitude: 135.5196)
        self.present(nextViewController, animated: true, completion: nil)
    }
}
