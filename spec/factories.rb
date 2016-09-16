FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'brant6'
  end

  factory :account do
    name 'Test'
    username 'noahramey'
  end
end
