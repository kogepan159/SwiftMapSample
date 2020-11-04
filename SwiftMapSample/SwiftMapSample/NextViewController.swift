//
//  ViewController.swift
//  Swift_Leaning_01

import UIKit
import GoogleMaps
import CoreLocation

class NextViewController: UIViewController {

    var latitude: CLLocationDegrees? //緯度を設定
    var longitude: CLLocationDegrees? //経度を設定

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(latitude: latitude!, longitude: longitude!)
        
    }

    //ViewControllerに渡すメソッド
    func configure(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        //表示するマップの座標位置と表示されるサイズを生成
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true //現在地情報を有効にする
        view = mapView
        //指定箇所にピンを立てる
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)//緯度、軽度を設定
        
        marker.map = mapView
        self.latitude = latitude //configureのlatitudeの引数
        self.longitude = longitude //configureのlongitude引数
        
    }


}

