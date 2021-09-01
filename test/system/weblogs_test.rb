require "application_system_test_case"

class WeblogsTest < ApplicationSystemTestCase
  setup do
    @weblog = weblogs(:one)
  end

  test "visiting the index" do
    visit weblogs_url
    assert_selector "h1", text: "Weblogs"
  end

  test "creating a Weblog" do
    visit weblogs_url
    click_on "New Weblog"

    fill_in "", with: @weblog.
    fill_in "Content", with: @weblog.content
    fill_in "Title", with: @weblog.title
    click_on "Create Weblog"

    assert_text "Weblog was successfully created"
    click_on "Back"
  end

  test "updating a Weblog" do
    visit weblogs_url
    click_on "Edit", match: :first

    fill_in "", with: @weblog.
    fill_in "Content", with: @weblog.content
    fill_in "Title", with: @weblog.title
    click_on "Update Weblog"

    assert_text "Weblog was successfully updated"
    click_on "Back"
  end

  test "destroying a Weblog" do
    visit weblogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weblog was successfully destroyed"
  end
end
