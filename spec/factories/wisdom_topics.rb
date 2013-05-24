# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wisdom_topic, :class => 'Topic' do
    title "MyString"
    slug "MyString"
    description "MyText"
    row_order 1
  end
end
