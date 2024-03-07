
let skeleton = Enemy(health: 100, attackStrength: 5)
let skeleton2 = Enemy(health: 100, attackStrength: 5)

print("Skeleton health: \(skeleton.health)")


let dragon = Dragon(wingSpan: 10)

print(dragon.wingSpan)
print(dragon.health)
print(dragon.attackStrength)

dragon.health = 1000
dragon.attackStrength = 40

print(dragon.health)
print(dragon.attackStrength)

dragon.attack()
