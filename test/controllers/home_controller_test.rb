require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "homepage returns 200" do
    get root_url
    assert_response :success
  end

  test "homepage shows name" do
    get root_url
    assert_select "h1", text: /Alexander Rodger/
  end

  test "homepage shows tagline" do
    get root_url
    assert_select "p", text: /Software Developer/
  end

  test "homepage has CV link" do
    get root_url
    assert_select "a[href=?]", cv_path, text: "CV"
  end

  test "homepage has GitHub link" do
    get root_url
    assert_select "a[href=?]", "https://github.com/SandyRodger"
  end

  test "homepage lists Launch School entry" do
    get root_url
    assert_select "h3", text: /Launch School/
  end

  test "homepage lists Writing entry" do
    get root_url
    assert_select "h3", text: /Writing/
  end

  test "homepage has exactly one footer" do
    get root_url
    assert_select "footer", count: 1
  end
end
