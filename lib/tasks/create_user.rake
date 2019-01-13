namespace :sample_users do
  desc "Create sample users"
  task create: :environment do
    puts "----Creating sample user----"
    user = User.new(
      email: "test@test.com",
      password: "123456",
      password_confirmation: "123456",
      first_name: "Test",
      last_name: "User",
    )
    user.save!
  end
end