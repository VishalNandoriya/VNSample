//
//  FirstVC.swift
//  VNSample
//
//  Created by Mac-Vishal on 28/03/18.
//  Copyright © 2018 Mac-Vishal. All rights reserved.
//

import UIKit
import Alamofire

class FirstVC: UIViewController {

    var weatherData = [Weather]()
    var arrWeather = [Weather]()

    @IBOutlet weak var tblData : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let prameters : Parameters = [:]
        
//        WSCalls.sharedInstance.callWebService(url: WeatherUrl, httpMethod: .get, params: prameters, isHeaderType: false, successHandler: { (response) in
//            //print(response)
//            do{
//                self.weatherData = try JSONDecoder().decode([Weather].self, from: response.data!)
//                debugPrint("SUCCESS JSON:", self.weatherData)
//
//                for weatherObj in self.weatherData
//                {
//                    weatherObj.save()
//                }
//
//                self.tblData.reloadData()
//            }
//            catch
//            {
//                debugPrint(kSomethingWentWrong)
//            }
//        }, errorHandler: { (response) in
//            print(response)
//        }) { (error) in
//            print(error)
//        }
        self.weatherData = Weather.rows() as! [Weather]
        tblData.rowHeight = UITableViewAutomaticDimension
        tblData.estimatedRowHeight = 60
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension FirstVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.weatherData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:WeatherCell.self)) as! WeatherCell
        
        cell.lblRank.text = "Rank:\(self.weatherData[indexPath.row].rank!)"
        cell.lblKey.text = "Key:\(self.weatherData[indexPath.row].key!)"
        cell.lblArea.text = "Area:\(self.weatherData[indexPath.row].supplementalAdminAreas![0].localizedName!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}
