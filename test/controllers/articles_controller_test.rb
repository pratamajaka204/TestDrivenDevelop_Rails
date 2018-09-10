require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  
# called before every single test
  setup do
    @article = articles(:one)
  end

  
  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should get index" do
    get articles_url
    assert_response :success
    assert_template :index
    # assert_template layout: "app/views/layout/application"
  end

  test "should response 200 and render to new page" do
    get new_article_url
    assert_response :success
    assert_template :new
  end

  test "should create article" do
    def create
      puts "CREATE BERHASIL"
      @article = Article.new(params_artikel)
      if @article.save
      flash[:notice] = "Success Add Rows"
      redirect_to action: 'index'
    else
      flash[:notice] = "Error Add Rows"
      render 'new'
    end
  end
end
    # assert_redirected_to article_url(Article.last)
  

  test "should show article" do
 article = articles(:one)
  get article_url(article)
  assert_response :success
  end

  test "should get edit" do
    # get edit_article_url(@articles)
    # assert_response :success
    def edit
    @article = Article.find_by_id(params[:id])
  end
  end

  test "should update article" do
 #    article = articles(:one)
 #     patch article_url(@article), params: { article: { title: "updated" } }
 
 # # assert_redirected_to article_path(@article)
 #    # Reload association to fetch updated data and assert that title is updated.
 #    @article.reload
 #    assert_equal "updated", @article.title
  end
   

  test "should destroy article" do
    puts "berhasil hapus"
   article = articles(:one)
    assert_difference('Article.count', -1) do
      delete article_url(article)
    end
   
    # assert_redirected_to articles_path
  end

  private
   def params_artikel
    params.require(:article).permit(:title, :content, :status)
  end  
end
