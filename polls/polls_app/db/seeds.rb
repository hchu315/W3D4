# create_table "users", force: :cascade do |t|
#   t.string "username"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end


10.times do |i|
  User.create!( username: "hello#{i}")
end
p "created 10 users"

# create_table "polls", force: :cascade do |t|
#   t.string "title"
#   t.integer "question_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.integer "user_id"
# end
1.upto(8) do |i|
  Poll.create!(title: "This is title #{i}", question_id: i , user_id: i)
end
p "created 10 polls"


1.upto(8) do |i|
  Question.create!(text: "This is question #{i}", poll_id: i)
end
p "created 10 questions"

1.upto(8) do |i|
  AnswerChoice.create!(text: "#{i} this the question? ", user_id: i, question_id: i)
end
p "created 10 answer choices"


1.upto(8) do |i|
  Response.create!(user_id: i, answerchoice_id: i)
end
p "created 10 responses"
