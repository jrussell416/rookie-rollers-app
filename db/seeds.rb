# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!([{ # create Skater users
                first_name: "Trixie",
                last_name: "Franklin",
                phone_number: "647-123-5878",
                email: "skater@tord.com",
                insurance: "WFTDiCanada1234",
                role: 0,
                password: "password",
              },
              { # create Trainer users
                first_name: "Lucille",
                last_name: "Anderson",
                phone_number: "876-555-8065",
                email: "trainer@tord.com",
                insurance: "WFTDiCanada8753",
                role: 1,
                password: "password1",
              },
              { # create Admin users
                first_name: "Julienne",
                last_name: "Nonnatus",
                phone_number: "020-555-8065",
                email: "admin@tord.com",
                insurance: "WFTDiCanada7041",
                role: 2,
                password: "password2",
              }])

p "Created #{User.count} users"