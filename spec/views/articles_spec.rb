# require 'rails_helper'

# RSpec.describe "articles/edit", :type => :view do
#   it "renders _form partial form once" do
#     assign(:article, Article.new(:id => 1, :title => "Chicago"))
#     render
#     expect(view).to render_template(:partial => "_form", :count => 1)
#   end
# end

# RSpec.describe "articles/new", :type => :view do
#   it "renders _form partial form once" do
#     assign(:article, Article.new(:id => 1, :title => "Chicago"))
#     render
#     expect(view).to render_template(:partial => "_form", :count => 1)
#   end
# end

# RSpec.describe "articles/show", :type => :view do
#   it "displays the article" do
#     assign(:article, Article.new(:id => 1, :title => "Chicago"))
#     render
#     expect(rendered).to include("Chicago")
#   end
# end

# RSpec.describe "articles/show", :type => :view do
#   it "displays the comment partial" do
#     article = Article.new(:id => 1, :title => "Chicago")
#     article.comments << Comment.new(:commenter => "me")
#     article.comments << Comment.new(:commenter => "you")
#     assign(:article, article)
#     render
#     expect(view).to render_template(:partial => "comments/_comment", :count => 2)
#   end
# end

# RSpec.describe "articles/show", :type => :view do
#   it "displays the comment form partial" do
#     article = Article.new(:id => 1, :title => "Chicago")
#     assign(:article, article)
#     render
#     expect(view).to render_template(:partial => "comments/_form", :count => 1)
#   end
# end

# RSpec.describe "articles/index", :type => :view do
#   it "displays the article" do
#     assign(:articles, [Article.new(:id => 1, :title => "Chicago"), Article.new(:id => 1, :title => "New York")])
#     render
#     expect(rendered).to include("Chicago")
#   end
# end
