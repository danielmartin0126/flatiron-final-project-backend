require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tophundo = ["380", "400", "420", "440", "500", "550", "570", "620", "630", "730", "1250", "4000", "7670", "8870", "8930", "10180", "12210", "15700", "20920", "44350", "49520", "55230", "72850", "96000", "105600", "109600", "113400", "203160", "204360", "208090", "218230", "218620", "219640", "219740", "219990", "221380", "224260", "227300", "227940", "230410", "236390", "238320", "238960", "252490", "252950", "253710", "255710", "271590", "272060", "273110", "273350", "275390", "278360", "280790", "285800", "291480", "291550", "292030", "301520", "304050", "304930", "319630", "322330", "323370", "333930", "339610", "346110", "346900", "359550", "363970", "370910", "377160", "386360", "407530", "417910", "431960", "433850", "444090", "550650", "555570", "578080", "582010", "588430", "755790"]

User.create(name:"danny", steamid: 151, password:"okay")
User.create(name:"goblin", steamid: 152, password:"okay")
User.create(name:"jambino", steamid: 153, password:"okay")
User.create(name:"cheezwiz", steamid: 154, password:"okay")
User.create(name:"dunkaroo", steamid: 155, password:"okay")
User.create(name:"brassknucks", steamid: 156, password:"okay")

Friend.create(user_id: 1, friend_id: 2)
Friend.create(user_id: 1, friend_id: 3)
Friend.create(user_id: 1, friend_id: 4)
Friend.create(user_id: 1, friend_id: 5)
Friend.create(user_id: 1, friend_id: 6)
Friend.create(user_id: 2, friend_id: 1)
Friend.create(user_id: 3, friend_id: 1)
Friend.create(user_id: 3, friend_id: 6)
Friend.create(user_id: 4, friend_id: 1)
Friend.create(user_id: 4, friend_id: 5)
Friend.create(user_id: 5, friend_id: 4)
Friend.create(user_id: 5, friend_id: 1)
Friend.create(user_id: 6, friend_id: 1)
Friend.create(user_id: 6, friend_id: 3)

tophundo.map { |game|
    game_data = RestClient.get("https://store.steampowered.com/api/appdetails?appids=#{game}")
    stuff = JSON.parse(game_data)
    Game.create(app_id: game, name: stuff[game]["data"]["name"], desc:stuff[game]["data"]["short_description"])}

    FollowedGame.create(user_id: 1, game_id: 4, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 6, game_id: 2, app_id:10)

    FollowedGame.create(user_id: 7, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 8, game_id: 2, app_id:10)

    FollowedGame.create(user_id: 5, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 2, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 3, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 4, game_id: 2, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 5, app_id:10)

    FollowedGame.create(user_id: 1, game_id: 7, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 7, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 7, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 7, app_id:10)
    FollowedGame.create(user_id: 1, game_id: 7, app_id:10)
    FollowedGame.create(user_id: 2, game_id: 4, app_id:10)
    FollowedGame.create(user_id: 2, game_id: 4, app_id:10)
    FollowedGame.create(user_id: 2, game_id: 4, app_id:10)
    FollowedGame.create(user_id: 2, game_id: 4, app_id:10)
    FollowedGame.create(user_id: 2, game_id: 4, app_id:10)


    FollowedGame.create(user_id: 2, game_id: 4, app_id:10)

OwnedGame.create(user_id:1, game_id: 50)

Post.create(poster_id:1, game_id:49, title:"how is this game?", content: "wow this game is bad")
Post.create(poster_id:2, game_id:49, title:"i am excited for this to come out", content: "i will play it")
Post.create(poster_id:6, game_id:49, title:"Lorem ipsum dolor sit amet", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
Post.create(poster_id:5, game_id:2, title:"i am excited for this to come out", content: "i will play it")
Post.create(poster_id:4, game_id:1, title:"i am excited for this to come out", content: "i will play it")
Post.create(poster_id:3, game_id:49, title:"i am excited for this to come out", content: "i will play it")
Post.create(poster_id:2, game_id:49, title:"i am excited for this to come out", content: "i will play it")


Comment.create(user_id: 1, post_id: 1, content:"so rude")
Comment.create(user_id: 2, post_id: 2, content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
Comment.create(user_id: 3, post_id: 2, content:"Thats cool but you still suck")
Comment.create(user_id: 4, post_id: 3, content:"What do you mean 'you people'?")
Comment.create(user_id: 5, post_id: 3, content:"so rude")
Comment.create(user_id: 2, post_id: 2, content:"so rude")




