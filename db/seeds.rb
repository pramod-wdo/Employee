# db/seeds.rb

puts "🌱 Seeding data..."



# Create 10 new users
10.times do
  Employ.create!(
    name: Faker::Name.unique.name,          # Generates a unique full name
    email: Faker::Internet.unique.email,    # Generates a unique email
    password: "password",                   # Use a consistent password for testing
    # You can add other attributes here using various Faker generators
    # e.g., address: Faker::Address.full_address,
    # bio: Faker::Lorem.paragraph
  )
end

puts "✅ Done seeding!"
