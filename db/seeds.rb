# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({{ name: "Star Wars" }, { name: "Lord of the Rings" }})
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  [{name: "", email: "calvin@simplero.com", password: "test1234"},
  {name: "", email: "owais@simplero.com", password: "test1234"}])
Group.create!(
  [{user_id: 1, name: "group one"},
  {user_id: 1, name: "group two"},
  {user_id: 1, name: "group three"},
  {user_id: 1, name: "group four"},
  {user_id: 2, name: "group 2one"},
  {user_id: 2, name: "group 2two"},
  {user_id: 2, name: "group 2three"},
  {user_id: 2, name: "group 2four"}])

UserGroup.create!(
  [{user_id: 1, group_id: 1},
  {user_id: 1, group_id: 2},
  {user_id: 1, group_id: 3},
  {user_id: 1, group_id: 4},
  {user_id: 1, group_id: 5},
  {user_id: 1, group_id: 6},
  {user_id: 2, group_id: 1},
  {user_id: 2, group_id: 1},
  {user_id: 2, group_id: 5},
  {user_id: 2, group_id: 6},
  {user_id: 2, group_id: 7},
  {user_id: 2, group_id: 8}]);
