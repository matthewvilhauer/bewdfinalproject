# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

survey = Survey.create! title: "Rails Survey"
question = survey.questions.create! inquiry: "What testing framework do you prefer?"
question.answers.create! content: "Test::Unit"
question.answers.create! content: "Rspec"
question.answers.create! content: "Minitest"
question.answers.create! content: "Other/None"

question = survey.questions.create! inquiry: "How many applications do you have in production?"
question.answers.create! content: "0"
question.answers.create! content: "1-2"
question.answers.create! content: "3-5"
question.answers.create! content: "6+"

question = survey.questions.create! inquiry: "What is the answer to the universe and everything?"
question.answers.create! content: "42"

survey = Survey.create! title: "What's your favorite Pizza?"
survey.questions.create! inquiry: "What's your favorite kind of cheese?"
survey.questions.create! inquiry: "Favorite veggie?"
survey.questions.create! inquiry: "Favorite meat?"
survey.questions.create! inquiry: "Do you like thin, medium, or deep dish crust?"

survey = Survey.create! title: "Superhero Questionnaire"
survey.questions.create! inquiry: "Batman or Superman?"
survey.questions.create! inquiry: "Spiderman or Flash?"
survey.questions.create! inquiry: "Aquaman or Green Lantern?"