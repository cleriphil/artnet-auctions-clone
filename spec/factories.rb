FactoryGirl.define do
  factory :user do
    email 'test78@test.com'
    username 'tester'
    password 'password'
    password_confirmation 'password'
  end
  factory :auction do
    name 'Contemporary Art'
    description 'This is the description for Contemporary Art'
    start_date '2015-08-01 00:45:00'
    end_date '2015-08-07 00:45:00'
  end
  factory :lot do
    artwork_title 'Untitled'
    artwork_date '2006'
    estimate  '8,000—10,000 USD'
  end
end
