# Planets
Aplikacja pokaująca moje umiejętności, spładająca się z 3 ekranów. 

## Spis treści

- [Informacje](#Informacje)
- [Api](#Api)
- [Zdjęcia aplikacji](#Zdjęcia-aplikacji)

## Informacje
- MVC
- Xib
- Swift 5

## Api
Dane są pobierane za pomocą: 
https://api.le-systeme-solaire.net/rest.php/bodies?filter%5B%5D=isPlanet%2Ceq%2Ctrue

Używam Codable i URLSession

Model danych 
```json
{
  "bodies": [
    {
      "name": "string",
      "moons": [
        {
          "moon": "string",
          "rel": "string"
        }
      ],
      "perihelion": 0,
      "aphelion": 0,
      "mass": {
        "massValue": 0,
        "massExponent": 0
      },

      "meanRadius": 0,
      "avgTemp": 0,
      "sideralOrbit": 0,
    }
  ]
}
```


## Zdjęcia aplikacji
[<img src="./img/1.png" width="250"/>](./img/1.png)
[<img src="./img/2.png" width="250"/>](./img/2.png)
[<img src="./img/3.png" width="250"/>](./img/3.png)

