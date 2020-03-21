//
//  ViewController.swift
//  tableTest
//
//  Created by Brian on 3/20/20.
//  Copyright © 2020 Brian. All rights reserved.
//

import UIKit


//
//
struct Weather: Decodable
{
	let cnt: Int
	let cod: String
	var list:[Days]
}
struct Days: Decodable
{
	let dt:Int
	var main:Main
}

struct Main:Decodable
{
	var temp:Double
	let humidity:Int
}

var MainObj = Main( temp: -1, humidity: -1)
var DaysObj = Days(dt: -1, main: MainObj)
var weatherObj = Weather(cnt: -1, cod: "", list: [DaysObj])
var Rows = 0

////
////var weatherObj = Weather(base: "", id: -1, main: MainObj, weather: [])

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
		
		//cell.textLabel?.text = names[indexPath.row]
		print(indexPath.row)
		print("Line 51", weatherObj.list.count)
		cell.textLabel?.text = String(weatherObj.list[0].main.temp)
		
		if(weatherObj.list.count > 1)
		{
			if(Rows >= 40)
			{
				Rows = 0
			}
			weatherObj.list[indexPath.row].main.temp = weatherObj.list[Rows].main.temp
			cell.textLabel?.text = String(weatherObj.list[indexPath.row].main.temp)
			Rows += 8
		}
		else
		{
			//cell.textLabel?.text = String(weatherObj.list[0].main.temp)
			cell.textLabel?.text = "Waiting on Server or button Press"
			
			
		}
	
	
				

		return cell
	}
	

	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var tableView: UITableView!
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.delegate = self
		tableView.dataSource = self
		// Do any additional setup after loading the view.
	}

	@IBAction func reloadButtonTapped(_ sender: Any) {
		

		



		var city = self.textField.text ?? "london"
		self.textField.text = ""
//		if(city.contains(" "))
//		{
//			guard let indexOfSpace = city.firstIndex(of: " ") else { return }
//
//			print(city[indexOfSpace])
//
//		}
		

			guard let url = URL( string: "http://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=5641904b9f9d3a2b1751db682fa354ff&units=imperial") else{ return }
			let session = URLSession.shared
			session.dataTask(with: url) { (data, response, error) in
				guard let data = data else {return}

				do {
					let weather = try JSONDecoder().decode( Weather.self, from:data)

					print("Before reloading Data")
					weatherObj.list = weather.list
					print("After Reload Data")
					print(weatherObj.list[0].main.temp)
					self.tableView.reloadData()
							print("Line 85: after TableView.reloadData wa sclaled")

					//print("after reload data", weatherObj.list)

				} catch let jsonErr {
					print("error Serializing Json:", jsonErr)
				}

			}.resume()

		
		
		
		
		
//
		//let name:String = textField.text ?? "not a name"
		//names.append(name)
		textField?.text = ""
		tableView.reloadData()
		print("Line 105: after TableView.reloadData wa sclaled")
		
	}
	
}

