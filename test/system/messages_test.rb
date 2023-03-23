require "application_system_test_case"

class ChatMessagesTest < ApplicationSystemTestCase
  setup do
    @message = messages(:one)
  end

  test "visiting the index" do
    visit messages_url
    assert_selector "h1", text: "Chat messages"
  end

  test "should create chat message" do
    visit messages_url
    click_on "New chat message"

    fill_in "Room", with: @message.room_id
    fill_in "Text", with: @message.text
    fill_in "User", with: @message.user_id
    click_on "Create Chat message"

    assert_text "Chat message was successfully created"
    click_on "Back"
  end

  test "should update Chat message" do
    visit message_url(@message)
    click_on "Edit this chat message", match: :first

    fill_in "Room", with: @message.room_id
    fill_in "Text", with: @message.text
    fill_in "User", with: @message.user_id
    click_on "Update Chat message"

    assert_text "Chat message was successfully updated"
    click_on "Back"
  end

  test "should destroy Chat message" do
    visit message_url(@message)
    click_on "Destroy this chat message", match: :first

    assert_text "Chat message was successfully destroyed"
  end
end
