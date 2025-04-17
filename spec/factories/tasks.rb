FactoryBot.define do
  factory :task do
    title { "Sample Task" }
    description { "This is a sample task description" }
    due_date { 1.week.from_now }
    completed { false }
  end
end