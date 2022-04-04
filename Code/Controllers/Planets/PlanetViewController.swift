//
//  PlanetViewController.swift
//  Code
//
//  Created by Marzena Frąk on 23/03/2022.
//

import UIKit

class PlanetViewController: UIViewController {

    var planet: Planet?
    
    @IBOutlet weak var namePlanetLabel: UILabel!
    @IBOutlet weak var siderealPlanetLabel: UILabel!
    @IBOutlet weak var perihelionLabel: UILabel!
    @IBOutlet weak var aphelionLabel: UILabel!
    @IBOutlet weak var numberOfMoonsLabel: UILabel!
    @IBOutlet weak var tempPlanetLabel: UILabel!
    @IBOutlet weak var massPlanetLabel: UILabel!
    @IBOutlet weak var sizePlanetlLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var symbolImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePlanetLabel.text = planet?.name
        
        if let meanRadius = planet?.meanRadius {
            sizePlanetlLabel.text = "\(meanRadius * 2) KM"
        } else {
            sizePlanetlLabel.text = "no data"
        }
        
        if let perihelion = planet?.perihelion {
            perihelionLabel.text = "\(perihelion) KM"
        } else {
            perihelionLabel.text = "no data"
        }
        
        if let aphelion = planet?.aphelion {
            aphelionLabel.text = "\(aphelion) KM"
        } else {
            aphelionLabel.text = "no data"
        }
        
        if let moons = planet?.moonCount {
            numberOfMoonsLabel.text = "\(moons)"
        } else {
            numberOfMoonsLabel.text = "none"
        }
        
        if let avgTemp = planet?.avgTemp {
            tempPlanetLabel.text = "\(avgTemp) °K"
        } else {
            tempPlanetLabel.text = "no data"
        }
        
        if let mass = planet?.mass.massValue {
            massPlanetLabel.text = "\(mass) * 10^23 KG"
        } else {
            massPlanetLabel.text = "no data"
        }
        
        if let sideralOrbit = planet?.sideralOrbit {
            siderealPlanetLabel.text = "\(sideralOrbit) EARTH DAYS"
        } else {
            sizePlanetlLabel.text = "no data"
        }
        
        if let name = planet?.name {
            switch name {
//                1
            case "Uranus":
                let image = UIImage(named: "Uranus")
                imageView.image = image
                let symbol = UIImage(named: "Uranus_symbol")
                symbolImageView.image = symbol
//                2
            case "Neptune":
                let image = UIImage(named: "Neptune")
                imageView.image = image
                let symbol = UIImage(named: "Neptune_symbol")
                symbolImageView.image = symbol
//                3
            case "Saturne":
                let image = UIImage(named: "Saturn")
                imageView.image = image
                let symbol = UIImage(named: "Saturn_symbol")
                symbolImageView.image = symbol
//                4
            case "Jupiter":
                let image = UIImage(named: "Jupiter")
                imageView.image = image
                let symbol = UIImage(named: "Jupiter_symbol")
                symbolImageView.image = symbol
//                5
            case "Mars":
                let image = UIImage(named: "Mars")
                imageView.image = image
                let symbol = UIImage(named: "Mars_symbol")
                symbolImageView.image = symbol
//                6
            case "Mercure":
                let image = UIImage(named: "Mercury")
                imageView.image = image
                let symbol = UIImage(named: "Mercury_symbol")
                symbolImageView.image = symbol
//                7
            case "La Terre":
                let image = UIImage(named: "Earth")
                imageView.image = image
                let symbol = UIImage(named: "Earth_symbol")
                symbolImageView.image = symbol
//                8
            case "Vénus":
                let image = UIImage(named: "Venus")
                imageView.image = image
                let symbol = UIImage(named: "Venus_symbol")
                symbolImageView.image = symbol
            default:
                break
            }
        }
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}




