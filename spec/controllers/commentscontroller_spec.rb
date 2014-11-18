# require "rails_helper"
# require_relative "../support/auth_helper"

# RSpec.describe CommentsController, :type => :controller do
#   # login to http basic auth
#   include AuthHelper

#   describe "POST #create" do

#     it "responds with an HTTP 302 status code" do
#       article = Article.create!(title: "my article")
#       post :create, {article_id: article.reload.id, comment: {commenter: "Me", text: "hi"} }
#       expect(response).to have_http_status(302)
#     end

#     it "creates a comment on the article" do
#       article = Article.create!(title: "my article")
#       expect {
#         post :create, {article_id: article.reload.id, comment: {commenter: "Me", text: "hi"} }
#       }.to change {article.reload.comments.count }.by 1
#     end
#   end

#   describe "DELETE #destroy" do
#     it "responds unsuccessfully with an HTTP 401 status code if user is unauthenticated" do
#       article = Article.create!(title: "my article")
#       comment = Comment.create!(commenter: "Joe", body: "what", article_id: article.reload.id)
#       delete :destroy, {article_id: article.reload.id, id: comment.reload.id }
#       expect(response).to have_http_status(401)
#     end

#     it "responds with an HTTP 302 status code if user is authenticated" do
#       http_login
#       article = Article.create!(title: "my article")
#       comment = Comment.create!(commenter: "Joe", body: "what", article_id: article.reload.id)
#       delete :destroy, {article_id: article.reload.id, id: comment.reload.id }
#       expect(response).to have_http_status(302)
#     end

#     it "deletes the comment on the article if user is authenticated" do
#       http_login
#       article = Article.create!(title: "my article")
#       comment = Comment.create!(commenter: "Joe", body: "what", article_id: article.reload.id)
#       expect {
#         delete :destroy, {article_id: article.reload.id, id: comment.reload.id }
#       }.to change {article.reload.comments.count }.by -1
#     end
#   end
# end
