# require "rails_helper"
# require_relative "../support/auth_helper"

# RSpec.describe ArticlesController, :type => :controller do
#   # login to http basic auth
#   include AuthHelper

#   describe "GET #index" do
#     it "responds successfully with an HTTP 200 status code" do
#       get :index
#       expect(response).to be_success
#       expect(response).to have_http_status(200)
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end

#     it "loads all of the articles into @articles" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :index
#       expect(assigns(:articles)).to match_array([article1, article2])
#     end
#   end

#   describe "GET #show" do
#     it "responds successfully with an HTTP 200 status code" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :show, :id => article1.reload.id
#       expect(response).to be_success
#       expect(response).to have_http_status(200)
#     end

#     it "renders the show template" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :show, :id => article1.reload.id
#       expect(response).to render_template("show")
#     end

#     it "loads the article with the given id into @article" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :show, :id => article1.reload.id
#       expect(assigns(:article)).to eq(article1.reload)
#     end
#   end

#   describe "GET #new" do
#     it "responds unsuccessfully with an HTTP 401 status code if user is unauthenticated" do
#       get :new
#       expect(response).to_not be_success
#       expect(response).to have_http_status(401)
#     end

#     it "responds successfully with an HTTP 200 status code if user is authenticated" do
#       http_login
#       get :new
#       expect(response).to be_success
#       expect(response).to have_http_status(200)
#     end

#     it "renders the new template if user is authenticated" do
#       http_login
#       get :new
#       expect(response).to render_template("new")
#     end
#   end

#   describe "POST #create" do
#     it "responds unsuccessfully with an HTTP 401 status code if user is unauthenticated" do
#       post :create, article: {title: "what gives", text: "hi"}
#       expect(response).to_not be_success
#       expect(response).to have_http_status(401)
#     end

#     it "responds with an HTTP 302 status code if user is authenticated and valid article params are provided" do
#       http_login
#       post :create, article: {title: "what gives", text: "hi"}
#       expect(response).to have_http_status(302)
#     end

#     it "renders the 'new' template if creation fails b/c invalid params are provided" do
#       http_login
#       post :create, article: {title: "", text: "hi"}
#       expect(response).to render_template("new")
#     end
#   end

#   describe "GET #edit" do
#     it "responds unsuccessfully with an HTTP 401 status code if user is unauthenticated" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :edit, :id => article1.reload.id
#       expect(response).to_not be_success
#       expect(response).to have_http_status(401)
#     end

#     it "responds successfully with an HTTP 200 status code if user is authenticated" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :edit, :id => article1.reload.id
#       expect(response).to be_success
#       expect(response).to have_http_status(200)
#     end

#     it "loads the article into @article" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :edit, :id => article1.reload.id
#       expect(assigns(:article)).to eq(article1)
#     end

#     it "renders the edit template if user is authenticated" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       get :edit, :id => article1.reload.id
#       expect(response).to render_template("edit")
#     end
#   end

#   describe "PUT #update" do
#     it "responds unsuccessfully with an HTTP 401 status code if user is unauthenticated" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       put :update, :id => article1.reload.id, :article => {title: "Changed Man"}
#       expect(response).to_not be_success
#       expect(response).to have_http_status(401)
#     end

#     it "responds with an HTTP 302 status code if user is authenticated" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       put :update, :id => article1.reload.id, :article => {title: "Changed Man"}
#       expect(response).to have_http_status(302)
#     end

#     it "changes the value of article if the user is authenticated and provides valid params" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       put :update, :id => article1.reload.id, :article => {title: "Changed Man"}
#       expect(article1.reload.title).to eq("Changed Man")
#     end

#     it "renders the edit template if user is authenticated but provides invalid params" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       put :update, :id => article1.reload.id, :article => {title: "NO"}
#       expect(response).to render_template("edit")
#     end
#   end

#   describe "DELETE #destroy" do
#     it "responds unsuccessfully with an HTTP 401 status code if user is unauthenticated" do
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       delete :destroy, :id => article1.reload.id
#       expect(response).to_not be_success
#       expect(response).to have_http_status(401)
#     end

#     it "responds with an HTTP 302 status code if user is authenticated" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       delete :destroy, :id => article1.reload.id
#       expect(response).to have_http_status(302)
#     end

#     it "deletes the user if authenticated" do
#       http_login
#       article1, article2 = Article.create!(title: "Solid Man"), Article.create!(title: "Solid Woman")
#       expect { delete :destroy, :id => article1.reload.id }.to change {Article.count }.by -1
#     end
#   end
# end
