//
//  SolarSystemViewController.swift
//  Code
//
//  Created by Marzena Frąk on 02/03/2022.
//

import UIKit

class SolarSystemViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var planets: Planets?
    
    let cellIndentifire: String = "PlanetNameCollectionViewCell"
    
    func registerNibCellClasses() {
        let nib = UINib(nibName: cellIndentifire, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: cellIndentifire)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerNibCellClasses()
        
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        downloadData()
    }
}

extension SolarSystemViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let planetVC = PlanetViewController()
        guard let selectedPlanet = planets?.bodies[indexPath.row] else { return }
        planetVC.planet = selectedPlanet
        presentFullScreen(viewController: planetVC)
    }
}

extension SolarSystemViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planets?.planetsCount ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifire, for: indexPath) as? PlanetNameCollectionViewCell
        else { return UICollectionViewCell() }
        guard let planets = planets else { return UICollectionViewCell() }
        
        cell.planetNameLabel.text = planets.bodies[indexPath.row].name

        if indexPath.row == planets.planetsCount - 1 {
            cell.hideDotSeparator()
        } else {
            cell.dotView.isHidden = false
        }
        
        return cell
    }
}

extension SolarSystemViewController {
    
    func downloadData() {
        let jsonUrlString = "https://api.le-systeme-solaire.net/rest.php/bodies?filter%5B%5D=isPlanet%2Ceq%2Ctrue"
    
        guard let url = URL(string: jsonUrlString) else { return }
    
        URLSession.shared.dataTask(with: url) { data, response, err in

            guard let data = data else { return }
    
            do {
                let planet = try JSONDecoder().decode(Planets.self, from: data)
                self.planets = planet
                
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            } catch {
                print("\(error.localizedDescription)")
            }
        }.resume()
    }
}


