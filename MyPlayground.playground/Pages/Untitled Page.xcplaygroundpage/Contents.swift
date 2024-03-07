import UIKit

func dayOfWeek() -> Int{
    let day = 2
    switch day {
    case 1 :
        print("\(day) monday")
    case 2:
        print("\(day) tuesday")
    case 3:
        print("\(day) wednesday")
    case 4:
        print("\(day) thursday")
    case 5:
        print("\(day) friday")
    case 6:
        print("\(day) saturday")
    case 7:
        print("\(day) sunday")
    default:
        print("not a day")
    }
    return Int.random(in: 1 ... 8)
}

//let day = dayOfWeek()




