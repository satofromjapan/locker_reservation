# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add small lockers
1000.times do
  small_locker = Locker.create(size: "small", occupied: false)
end

# Add Medium lockers
1000.times do
  medium_locker = Locker.create(size: "medium", occupied: false)
end

# Add Large lockers
1000.times do
  large_locker = Locker.create(size: "large", occupied: false)
end
