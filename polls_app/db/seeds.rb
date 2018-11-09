# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all

  u0 = User.create!(username: "God")
  u1 = User.create!(username: "Skylar Tomali")
  u2 = User.create!(username: "Skyler Not Tomali")
  u3 = User.create!(username: "Bald Waif on Floor")

  p1 = Poll.create!(title: "Life Questions", user_id: u0.id)

  q1 = Question.create!(text: "When is half life 3 coming out", poll_id: p1.id)
    ac1 = AnswerChoice.create!(text: "Never", question_id: q1.id)
    ac2 = AnswerChoice.create!(text: "The 5th of November", question_id: q1.id)
    ac3 = AnswerChoice.create!(text: "When Gaben", question_id: q1.id)


  q2 = Question.create!(text: "If you punch yourself in the head and it hurts, are you strong or weak?", poll_id: p1)
    ac4 = AnswerChoice.create!(text: "No way", question_id: q2.id)
    ac5 = AnswerChoice.create!(text: "As strong as they go, dude", question_id: q2.id)
    ac6 = AnswerChoice.create!(text: "Get out of my face, poller freak", question_id: q2.id)


  q3 = Question.create!(text: "Is there a spoon?", poll_id: p1.id)
    ac7 = AnswerChoice.create!(text: "Right there in the drawer", question_id: q3.id)
    ac8 = AnswerChoice.create!(text: "My Spoon is Too Big", question_id: q3.id)
    ac9 = AnswerChoice.create!(text: "Only if there is a hand to wield it.", question_id: q3.id)

  r1 = Response.create!(user_id: u1.id, answer_choice_id: ac3.id)
  r2 = Response.create!(user_id: u2.id, answer_choice_id: ac6.id)
  r3 = Response.create!(user_id: u3.id, answer_choice_id: ac8.id)


end
