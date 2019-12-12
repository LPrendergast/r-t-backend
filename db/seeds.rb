# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs

artist1 = Artist.create(username: "luke", artist_name: "luketest", portfolio: "test", image_url: "testimage", description:"test",password_digest: "1")

artist2 = Artist.create(username: "john", artist_name: "johntest", portfolio: "johntestport", image_url: "johnimage", description:"joooohhhnnn",password_digest: "2")

event1 = Event.create(title: "Lukes event",description: "Lukes test event", image_url: "testeventimage", location:"london", date:"12/06/20", artist_id: artist1.id)
event2 = Event.create(title: "Johns event",description: "Johns test event", image_url: "NextTest", location:"London aswell", date:"12/06/21", artist_id: artist2.id)
event3 = Event.create(title: "EVENT",description: "DESC EVENT", image_url: "IMAGE EVENT", location:"WOOOOO", date:"10000", artist_id: artist1.id)
