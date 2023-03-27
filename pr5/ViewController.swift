//
//  ViewController.swift
//  pr5
//
//  Created by R93 on 27/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var countryData: UITableView!
    
    var array : [WelcomeElement] = []
    override func viewDidLoad() {
        super.viewDidLoad()
       getapi()
    }
    
    func getapi()
    {
        let url = URL(string:"https://restcountries.com/v3.1/all")
        var ur = URLRequest(url: url!)
        ur.httpMethod = "GET"
        URLSession.shared.dataTask(with: ur) { data, response, error in
            do{
                if error == nil{
                    self.array = try JSONDecoder().decode([WelcomeElement].self, from: data!)
                    DispatchQueue.main.async {
                        self.countryData.reloadData()
                    }
                }
            }
            catch
            {
                print(error.localizedDescription)
            }

        }.resume()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryData.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.lable1.text = array[indexPath.row].name.common
        cell.label2.text = array[indexPath.row].name.official
        cell.img.image = StringToImg(link: array[indexPath.row].flags.png)
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func StringToImg(link:String) -> UIImage?
    {
        let url1 = URL (string:link)
        let data = try? Data(contentsOf: url1! as URL)
         return UIImage(data: data!)
    }

}

