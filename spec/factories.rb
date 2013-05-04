FactoryGirl.define do

  # create the variable that is used in user_page_spec.rb
  factory :user do
    name                  "Hasan Han"
    email                 "hasan@example.com"
    password              "foobar"
    password_confirmation  "foobar"
  end
end