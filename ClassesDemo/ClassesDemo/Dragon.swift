class Dragon: Enemy {
    var wingSpan: Int
    
    init(wingSpan: Int) {
        self.wingSpan = wingSpan
        super.init(health: 10, attackStrength: 1)
    }
    
    func talk(speech : String) {
        print(speech)
    }
    
    override func move() {
        print("Fly forwards")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage")
    }
    
}
