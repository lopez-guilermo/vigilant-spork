FactoryBot.define do
  factory :user do
    sequence :email do |n|
    "dummyEmail#{n}@gmail.com"
  end
  password { "secretPassword" }
  password_confirmation { "secretPassword" }
  end

  factory :gram do
    message { "hello" }
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.jpeg').to_s, 'image/jpeg') }
    association :user
    end
end
  
