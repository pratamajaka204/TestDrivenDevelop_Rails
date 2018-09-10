require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "Get all comment from first article" do
    puts "sukses"
    article = Article.first
    assert article.comments
  end

  # test "Get article from first comment" do
  #   puts "sukses"
  #   comment = Comment.first
  #   assert comment.articles
  # end


  #-------------------Start Validation---------------------
  # ******************when save data**********************
  test "create article with invalid , title is blank" do
  	puts "sukses"
    article = Article.new(title: "", content:"testing yaa", status: "active")
  	assert_equal false, article.valid?
  	assert_not article.save
  end

  test "create article with invalid data, title < 5" do
    puts "sukses"
  	article = Article.new(title: "abcd", content:"lorem ipsum herodo kara", status: "active")
  	assert_equal false, article.valid?
  	assert_not article.save
  end

  test "create article with invalid data, content is blank" do
     puts "sukses"
  	article = Article.new(title: "learn uni test", content:"", status: "active")
  	assert_equal false, article.valid?
  	assert_not article.save
  end

  test "create article with invalid data, content < 10" do
     puts "sukses"
  	article = Article.new(title: "learn uni test", content:"abcd efg", status: "active")
  	assert_equal false, article.valid?
  	assert_not article.save
  end

  test "create article with invalid data, status is blank" do
     puts "sukses"
  	article = Article.new(title: "learn uni test", content:"lorem ipsum herodo kara", status: "")
  	assert_equal false, article.valid?
  	assert_not article.save
  end
  
  test "create article with valid data" do
     puts "sukses"
  	article = Article.new(title: "testing ror_test", content:"lorem ipsum herodo kara", status: "active")
  	assert_equal true, article.valid?
  	assert article.save
  end


  # ******************when edit data**********************
  test "edit article with invalid , title is blank" do
     puts "sukses"
  	article = Article.first
  	assert_equal false, article.update(title: "", content:"lorem ipsum herodo kara", status: "active")
  end

  test "edit article with invalid data, title < 5" do
     puts "sukses"
  	article = Article.first
  	assert_equal false, article.update(title: "abcd", content:"lorem ipsum herodo kara", status: "active")
  end

  test "edit article with invalid data, content is blank" do
     puts "sukses"
  	article = Article.first
  	assert_equal false, article.update(title: "learn uni test", content:"", status: "active")
  end

  test "edit article with invalid data, content < 10" do
     puts "sukses"
  	article = Article.first
  	assert_equal false, article.update(title: "learn uni test", content:"abcd efg", status: "active")
  end

  test "edit article with invalid data, status is blank" do
     puts "sukses"
  	article = Article.first
  	assert_equal false, article.update(title: "learn uni test", content:"lorem ipsum herodo kara", status: "")
  end
  
  test "edit article with valid data" do
     puts "sukses"
  	article = Article.first
  	assert_equal true, article.update(title: "testing", content:"This is body", status: "active")
  end  
  #-------------------End Validation---------------------

  #-------------------Test custom Scope---------------------
  test "check scope, data exist if status active" do
    puts "sukses bro"
  	assert Article.status_active
  end
end
