FactoryGirl.define do
  factory :user do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    email         { Faker::Internet.email }
    date_of_birth { Faker::Date }
    password              'Wmidtet007?'
    password_confirmation 'Wmidtet007?'
    profile_picture { File.open("#{Rails.root}/test/fixtures/files/rails.png") }
  end
end
