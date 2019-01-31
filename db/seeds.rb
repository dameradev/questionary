@user1 = User.create!(username: "dame.radev", email: "dame@test.com", password: "123456", password_confirmation: "123456")
@user2 = User.create!(username: "gose.simonov", email: "gose@test.com", password: "123456", password_confirmation: "123456")

puts "2 users created"

@question1 = Question.create!(
  title: "What is the meaning?",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam malesuada sagittis arcu sit amet placerat. Curabitur accumsan quam cursus finibus rutrum. Fusce pretium felis ultrices dictum laoreet. In mollis eleifend quam, a congue nisl commodo id. Proin at imperdiet lorem. Sed eget gravida odio, a ultrices orci.",
  user_id: @user1.id)
  
@question2 = Question.create!(
  title: "How is that the meaning?",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam malesuada sagittis arcu sit amet placerat. Curabitur accumsan quam cursus finibus rutrum. Fusce pretium felis ultrices dictum laoreet. In mollis eleifend quam, a congue nisl commodo id. Proin at imperdiet lorem. Sed eget gravida odio, a ultrices orci.",
  user_id: @user2.id)

puts "2 questions created"

5.times do |n|
  Answer.create!(content: "Excelent question #{n}", user_id: @user1.id, question_id: @question1.id)
end

5.times do |n|
  Answer.create!(content: "Excelent question #{n}", user_id: @user2.id, question_id: @question2.id)
end
puts "10 answers created"
