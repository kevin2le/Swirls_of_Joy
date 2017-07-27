# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.destroy_all

stores = Store.create ([
    {
    name: "Drips & Swirls",
    image_content_type: "http://i.imgur.com/p0XcbmE.jpg",
    location: "3076 W 8th St, Los Angeles, CA 90005",
    contact_info: "(213) 568-3021",
    rating: 0
    },

    {
    name: "Joe's Italian Ice",
    image_content_type:"http://i.imgur.com/7xg5evg.jpg",
    location: "2201 S Harbor Blvd Anaheim, CA 92802",
    contact_info: "(714) 703-2100",
    rating: 0
    }
])

comments = Comment.create([{
    
}])


