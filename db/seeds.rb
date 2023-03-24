puts "seed starting"

puts "user is creating ..."

User.destroy_all

john = User.create!(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'secret')

puts "user created"

puts "tree is creating ..."

Tree.destroy_all

Tree.create!(name: 'John’s apple tree', address: '20 rue des Capucins 69001 Lyon', description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.', price_per_year: 175, quantity_per_year: 5, fruit_type: 'Apple', user: john)
Tree.create!(name: 'John’s cherry tree', address: '21 rue des Capucins 69001 Lyon', description: 'This cherry tree produces both sweet and sour cherries. They will be perfect to cut a little hunger, or enjoy some juicy cherries for the dessert.', price_per_year: 35, quantity_per_year: 10, fruit_type: 'Cherry', user: john)
Tree.create!(name: 'John’s orange tree', address: '22 rue des Capucins 69001 Lyon', description: 'This orange tree produces both sweet and sour oranges. They will be perfect to cut a little hunger, or enjoy a juicy orange for the dessert.', price_per_year: 50, quantity_per_year: 7, fruit_type: 'Orange', user: john)
Tree.create!(name: 'John’s mango tree', address: '23 rue des Capucins 69001 Lyon', description: 'This mango tree produces both sweet and sour melons. They will be perfect to cut a little hunger, or enjoy a juicy mango for the dessert.', price_per_year: 80, quantity_per_year: 3, fruit_type: 'Mango', user: john)

puts "trees created"
puts "end of seed"
