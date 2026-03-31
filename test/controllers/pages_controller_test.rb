require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  # CV page
  test "CV page returns 200" do
    get cv_url
    assert_response :success
  end

  test "CV page shows name" do
    get cv_url
    assert_select "h1", text: /Alexander Rodger/
  end

  test "CV page shows profile section" do
    get cv_url
    assert_select "h2", text: /Profile/i
  end

  test "CV page shows skills section" do
    get cv_url
    assert_select "h2", text: /Technical Skills/i
  end

  test "CV page shows projects section" do
    get cv_url
    assert_select "h2", text: /Projects/i
  end

test "CV page has GitHub link" do
    get cv_url
    assert_select "a[href=?]", "https://github.com/SandyRodger"
  end

  # Launch School page
  test "Launch School page returns 200" do
    get launch_school_url
    assert_response :success
  end

  test "Launch School page shows heading" do
    get launch_school_url
    assert_select "h1", text: /Launch School/
  end

  test "Launch School page shows curriculum modules section" do
    get launch_school_url
    assert_select "h2", text: /Curriculum Modules/i
  end

  test "Launch School page shows Todo Lists app" do
    get launch_school_url
    assert_select "h3", text: /Todo Lists/
  end

  test "Launch School page has live demo link" do
    get launch_school_url
    assert_select "a", text: /Live demo/i
  end
end
