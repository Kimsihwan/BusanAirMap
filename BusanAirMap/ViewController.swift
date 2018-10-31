//
//  ViewController.swift
//  BusanAirMap
//
//  Created by D7702_10 on 2018. 10. 31..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var dustMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 지도의 중심점
        let location = CLLocationCoordinate2D(latitude: 35.180100, longitude: 129.081017)
        // 반경 설정 숫자가 작을수록 줌인 클수록 줌아웃
        let span = MKCoordinateSpan(latitudeDelta: 0.27, longitudeDelta: 0.27)
        // region 설정
        let region = MKCoordinateRegion(center: location, span: span)
        
        
        //지도에 표시하기
        dustMapView.setRegion(region, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 35.153245, longitude: 129.0616769)
        pin.title = "경남공고"
        pin.subtitle = "전포동 측정소"
        dustMapView.addAnnotation(pin)
    }
}

