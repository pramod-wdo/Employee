# db/seeds.rb

puts "🌱 Seeding data..."



# Create 10 new users
1000.times do
  Employ.create!(
    first_name: Faker::Name.unique.first_name,          # Generates a unique full name
    middle_name: Faker::Name.middle_name,    # Generates a unique email
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.exchange_code,
    gender: Faker::Gender.binary_type,
    address: Faker::Address.full_address,
    refno: Faker::Alphanumeric.alphanumeric(number: 4)                   # Use a consistent password for testing
    # You can add other attributes here using various Faker generators
    # e.g., address: Faker::Address.full_address,
    # bio: Faker::Lorem.paragraph
  )
end

puts "✅ Done seeding!"
