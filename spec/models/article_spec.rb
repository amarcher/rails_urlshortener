require "rails_helper"

# RSpec.describe Article, :type => :model do
#   xit "will create a new article in the db with provided title and text" do
#     article = Article.new(title: "You are my sunshine", text: "My only sunshine")
#     expect { article.save! }.to change{ Article.count }.by 1
#   end

#   xit "will raise an ActiveRecord::RecordInvalid error trying to create an article w/o a title" do
#     expect { Article.create!(text: "My only sunshine") }.to raise_error ActiveRecord::RecordInvalid
#   end

#   xit "will raise an ActiveRecord::RecordInvalid error trying to create an article w/ a title of less than five characters" do
#     expect { Article.create!(title: "You", text: "My only sunshine") }.to raise_error ActiveRecord::RecordInvalid
#   end

#   xit "will *not* raise an error trying to create an article without text" do
#     expect { Article.create!(title: "You are my sunshine") }.not_to raise_error
#   end

#   describe '#title' do
#     xit 'should return a string (eq to the article\'s title)' do
#       article = Article.create!(title: "You are my sunshine")
#       expect(article.title).to eq "You are my sunshine"
#     end
#   end

#   describe '#text' do
#     xit 'should return a string (eq to the article\'s text)' do
#       article = Article.create!(title: "You are my sunshine", text: "My only sunshine")
#       expect(article.text).to eq "My only sunshine"
#     end
#   end

#   describe '#comments' do
#     xit 'should respond to the method #comments' do
#       article = Article.create!(title: "You are my sunshine", text: "My only sunshine")
#       expect(article).to respond_to :comments
#     end
#   end
# end
