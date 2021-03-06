# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = Genre.create([{name: "給料"}, {name: "仕送り"}, {name: "食費"}, {name: "外食費"}, {name: "間食・カフェ"}, {name: "交通費"}, {name: "娯楽費"}, {name: "雑費"}])
#histories = History.create([{user_id: 1, genre_id: 1, price: 30000, sign: 1, detail:"研究室給料"}, {user_id: 1, genre_id: 4, price: 2000, sign: 0, detail:"しゃぶ葉"}, {user_id: 1, genre_id: 5, price: 500, sign: 0, detail:"タリーズ"},])