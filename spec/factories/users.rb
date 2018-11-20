FactoryBot.define do
  factory :user do
    email { Faker::Internet.email  }
    password { 'zaq123zaq123' }
  end
end