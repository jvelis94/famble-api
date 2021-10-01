FactoryBot.define do
  factory :notification do
    actor_id { 1 }
    recipiend_id { 1 }
    read_at { "2021-10-01 09:38:58" }
    action { "MyString" }
    notifiable_id { 1 }
    notifiable_type { 1 }
  end
end
