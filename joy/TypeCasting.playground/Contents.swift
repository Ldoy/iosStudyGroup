import UIKit
import Foundation

class Media {
	var name: String
	init(name: String) {
		self.name = name
	}
}

class Movie: Media {
	var genre: String
	init(genre: String, movieName: String) {
		self.genre = genre
		super.init(name: movieName)
	}
}

class TV: Media {
	var mainActor: String
	init(mainActor: String, TVName: String) {
		self.mainActor = mainActor
		super .init(name: TVName)
	}
}

var things: [Any] = []

things.append("Joy")
things.append(5)
things.append(4.3)
things.append( { (name: String) -> String in "안녕하세요 \(name)" } )
things.append( (3.4, 20.3) )
things.append(Movie(genre: "RomanticComedy", movieName: "미녀는괴로워"))

for thing in things {
	switch thing {
	case 5 as Int:
		print("Im Int")
	case let someInt where someInt is String :
		print("I'm \(someInt)")
	case let double as Double:
		print("I'm double : \(double)")
	case let closure as (String) -> String:
		print( closure("joy") )
	default:
		print("hey")
	}
}

