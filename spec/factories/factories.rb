FactoryGirl.define do
  factory :user do
    name     "Josiah Husk"
    email    "jhusk@frontier.com"
    password "foobar"
    password_confirmation "foobar"
  end
end