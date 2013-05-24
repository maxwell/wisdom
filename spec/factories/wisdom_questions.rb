# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wisdom_question, :class => 'Question' do
    title "MyString"
    text "MyText"
    row_order 1
    topic_id 1
  end
end
