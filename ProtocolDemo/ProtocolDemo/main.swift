protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale: Bool = true
    
    func layEggs() {
        if isFemale {
            print("laying eggs")
        }
    }
    
    func fly(){
        print("Generic flying")
    }
}


class Eagle: Bird, CanFly{
    override func fly() {
        print("eagle flying")
    }
    func soar() {
        print("soar")
    }
    
}

class Penguin: Bird {
    func swim() {
        print("swimmin")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let myEagle = Eagle()
myEagle.fly()

let myPenguin = Penguin()

