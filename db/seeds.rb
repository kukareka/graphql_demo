squad_a = Squad.create! name: 'Squad A'
squad_b = Squad.create! name: 'Squad B'

alice = User.create! name: 'Alice', squad: squad_a
bob = User.create! name: 'Bob', squad: squad_a
carol = User.create! name: 'Carol', squad: squad_a
david = User.create! name: 'David', squad: squad_b
erin = User.create! name: 'Erin', squad: squad_b
frank = User.create! name: 'Frank', squad: squad_b

Guild.create! name: 'Engineers', users: [alice, david, erin]
Guild.create! name: 'Pet lovers', users: [carol, erin, frank]
