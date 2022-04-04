//
//  Planet.swift
//  Code
//
//  Created by Marzena Frąk on 17/03/2022.
//

struct Planet: Decodable {
    let name: String
    let moons: [Moon]?
    let avgTemp: Int
    let mass: Mass
    let meanRadius: Float
    let perihelion: Int
    let aphelion: Int
    let sideralOrbit: Double
    
    var moonCount: Int {
       return moons?.count ?? 0
    }
}

struct Planets: Decodable {
    let bodies: [Planet]
    
    var planetsCount: Int {
        bodies.count
    }
}

struct Moon: Codable {
    let moon: String
}

struct Mass: Codable {
    let massValue: Double
}

