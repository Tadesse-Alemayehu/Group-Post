# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({{ name: "Star Wars" }, { name: "Lord of the Rings" }})
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  [{name: "", email: "calvin@simplero.com", password: "simplero"},
  {name: "", email: "owais@simplero.com", password: "simplero"}])
Group.create!(
  [{user_id: 1, name: "Calvins' Teaching group"},
  {user_id: 1, name: "W3C Working Committee"},
  {user_id: 1, name: "simplero Working group"},
  {user_id: 1, name: "mongoDB Working group"},
  {user_id: 2, name: "2Calvins' Teaching group"},
  {user_id: 2, name: "2W3C Working Committee"},
  {user_id: 2, name: "2simplero Working group"},
  {user_id: 2, name: "2mongoDB Working group"},])

UserGroup.create!(
  [{user_id: 1, group_id: 1},
  {user_id: 1, group_id: 2},
  {user_id: 1, group_id: 3},
  {user_id: 1, group_id: 4},
  {user_id: 1, group_id: 5},
  {user_id: 1, group_id: 6},
  {user_id: 2, group_id: 1},
  {user_id: 2, group_id: 2},
  {user_id: 2, group_id: 5},
  {user_id: 2, group_id: 6},
  {user_id: 2, group_id: 7},
  {user_id: 2, group_id: 8}]);
  
