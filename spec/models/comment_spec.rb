# require "rails_helper"

# RSpec.describe Comment, :type => :model do
#   xit "will create a new comment in the db with provided commenter and body" do
#     comment = Comment.new(commenter: "Joe Schmoe", body: "I liked this")
#     expect { comment.save! }.to change{ Comment.count }.by 1
#   end

#   describe '#commenter' do
#     xit 'should return a string (eq to the comment\'s commenter)' do
#       comment = Comment.create!(commenter: "Joe Schmoe")
#       expect(comment.commenter).to eq "Joe Schmoe"
#     end
#   end

#   describe '#body' do
#     xit 'should return a string (eq to the comment\'s body)' do
#       comment = Comment.create!(commenter: "Joe Schmoe", body: "I liked this")
#       expect(comment.body).to eq "I liked this"
#     end
#   end

#   describe '#article' do
#     xit 'should respond to the method #article' do
#       comment = Comment.create!(commenter: "You are my sunshine", body: "I liked this")
#       expect(comment).to respond_to :article
#     end

#     xit 'should return the article this comment belongs to' do
#       article = Article.create!(title: 'what the heck', text: 'it is the bomb')
#       comment = Comment.create!(commenter: "You are my sunshine", body: "I liked this", article_id: article.reload.id)
#       expect(comment.reload.article).to eq article
#     end
#   end
# end
