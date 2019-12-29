# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs

artist1 = Artist.create(username: "luke", artist_name: "luketest", portfolio: "test", image_url: "testimage", description:"test",password_digest: "1")

artist2 = Artist.create(username: "john", artist_name: "johntest", portfolio: "johntestport", image_url: "johnimage", description:"joooohhhnnn",password_digest: "2")

event1 = Event.create(title: "Lukes event",description: "Lukes test event", image_url: "testeventimage", location:"london", date:"12/06/20", artist_id: artist1.id, latitude: 51.5074, longitude: 0.1278)
event2 = Event.create(title: "Johns event",description: "Johns test event", image_url: "NextTest", location:"London aswell", date:"12/06/21", artist_id: artist2.id, latitude: 51.5074, longitude: 0.1278)
event3 = Event.create(title: "EVENT",description: "DESC EVENT", image_url: "IMAGE EVENT", location:"WOOOOO", date:"10000", artist_id: artist1.id, latitude: 51.5074, longitude: 0.1278)


style1 = Style.create(website_colour: 'black', background_colour: 'green', font_family: 'American Typewriter', font_colour: 'red', artist_id: 1)
style2 = Style.create(website_colour: 'red', background_colour: 'blue', font_family: 'American Typewriter', font_colour: 'grey', artist_id: 2)

eventstyle1 = EventStyle.create(website_colour: 'red', background_colour: 'blue', font_family: 'American Typewriter', font_colour: 'grey', event_id: 1)
eventstyle2 = EventStyle.create(website_colour: 'black', background_colour: 'green', font_family: 'American Typewriter', font_colour: 'grey', event_id: 2)