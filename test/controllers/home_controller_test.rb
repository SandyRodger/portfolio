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

  test "homepage has exactly one footer" do
    get root_url
    assert_select "footer", count: 1
  end

  test "sidebar links to projects page" do
    get root_url
    assert_select "a[href=?]", projects_page_path, text: "Projects"
  end

  test "sidebar links to training page" do
    get root_url
    assert_select "a[href=?]", training_path, text: "Training"
  end
end
