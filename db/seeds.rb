puts "🌱 Seeding spices..."

# Seed your database here

10.times do |index|
    #seed customers
    names = ["Jim", "June", "Kevin", "Alec", "Andrew", "Chris","Mason", "Paul", "George", "John"]
    Customer.create(
        name: names[index],
        age: rand(18..35)
    )
end

5.times do |index|
    #constants to choose from 
    names = ['3sixteen', 'Tellason', 'Japan Blue', 'Patagonia', 'Nike']
    locations = ['New York', 'LA', 'Portland', 'Chicago', 'San Francisco'] 
    #seed brands
    Brand.create(
        name: names[index],
        origin: locations[index]
    )
end

20.times do 
    #seed articles
    categories = ["shirt", "pants", "sweater", "shoes", "jacket"]
    materials = ["denim", "leather", "wool", "cotton", "silk"]
    colors = ["red","orange","yellow","green","blue","indigo","purple", "white", "black"]
    sizes = ["S", "M", "L", "XL"]
    Article.create(
        category: categories.sample,
        material: materials.sample,
        color: colors.sample,
        size: sizes.sample,
        brand_id: rand(1..5),
        customer_id: rand(1..10)
    )
end

# 20.times do 
#     #seed reviews
#     Review.create(

#     )
# end


puts "✅ Done seeding!"
