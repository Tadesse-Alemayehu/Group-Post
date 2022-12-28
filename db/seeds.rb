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

Post.create!([{user_id: 1, group_id: 1, title: "user 1 post 1 on group 1", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 1, group_id: 2, title: "user 1 post 2 on group 2", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 1, group_id: 2, title: "user 1 post 3 on group 3", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 1, group_id: 4, title: "user 1 post 4 on group 4", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 1, group_id: 5, title: "user 1 post 5 on group 5", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 1, group_id: 6, title: "user 1 post 6 on group 6", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" }])





Post.create!([{user_id: 2, group_id: 1, title: "user 2 post 1 on group 1", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 2, group_id: 2, title: "user 2 post 2 on group 2", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 2, group_id: 5, title: "user 2 post 3 on group 3", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 2, group_id: 6, title: "user 2 post 4 on group 4", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 2, group_id: 7, title: "user 2 post 5 on group 5", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" },
{user_id: 2, group_id: 8, title: "user 2 post 6 on group 6", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
 commodo consequat. Duis aute irure doloasdas aa.
" }])


Comment.create!([
{user_id: 1, contents: Post.find(1), body: "USER 1 COMMENT 1 ON POST 1"},
{user_id: 1, contents: Post.find(2), body: "USER 1 COMMENT 1 ON POST 2"},
{user_id: 1, contents: Post.find(3), body: "USER 1 COMMENT 1 ON POST 3"},
{user_id: 1, contents: Post.find(4), body: "USER 1 COMMENT 1 ON POST 3"},
{user_id: 1, contents: Post.find(5), body: "USER 1 COMMENT 1 ON POST 5"},
{user_id: 1, contents: Post.find(6), body: "USER 1 COMMENT 1 ON POST 6"},
{user_id: 2, contents: Post.find(1), body: "USER 2 COMMENT 1 ON POST 1"},
{user_id: 2, contents: Post.find(2), body: "USER 2 COMMENT 1 ON POST 2"},
{user_id: 2, contents: Post.find(3), body: "USER 2 COMMENT 1 ON POST 3"},
{user_id: 2, contents: Post.find(4), body: "USER 2 COMMENT 1 ON POST 3"},
{user_id: 2, contents: Post.find(5), body: "USER 2 COMMENT 1 ON POST 5"},
{user_id: 2, contents: Post.find(6), body: "USER 2 COMMENT 1 ON POST 6"},
])

Comment.create([
{user_id: 2, contents: Comment.find(1), body: "USER 2 replay 1 ON POST 1"},
{user_id: 2, contents: Comment.find(2), body: "USER 2 replay 2 ON POST 2"},
{user_id: 1, contents: Comment.find(6), body: "USER 1 replay 1 ON POST 6"},
{user_id: 1, contents: Comment.find(7), body: "USER 1 replay 2 ON POST 7"},
])
