puts "Clearing old data..."
User.destroy_all
Location.destroy_all
Donation.destroy_all


puts "🌱 Creating Users..."

20.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        avatar: "https://dwrhx129r2-flywheel.netdna-ssl.com/wp-content/uploads/2015/08/blank-avatar.png"
    )
end

comment = ["Clean it!", "This is awesome!", "Hope this helps.", "Wish I could give more.", "1 dollare per pound? Easy choice.", "Clean our waters!", "For the turtles.", "One step at a time!", "Blub Blub.", "Let's keep it going everyone!", "Doing my part.", "Big or small, we can all help.", "We can change the world.", "Just throw it in a bag.", "Proud to be apart of this movement.", "The Ocean is calling!", "Lets avoid a future crisis.", "Save our reefs, and marine life.", "A little goes a long way.", "Go team ocean!"]

name = ["Atlantic Ocean", "Pacific Ocean", "Indian Ocean", "Arctic Ocean", "Southern Ocean"]


puts "🌱 Operation Cleanup Locations..."

name.each {|n| Location.create({name:n}) }




puts "🌱 Donations Incoming..."

12.times {
    Donation.create({amount:rand(1..1000), comment:comment.sample, user_id:User.all.sample.id, location_id:Location.all.sample.id})
}


puts "✅ Done seeding!"
