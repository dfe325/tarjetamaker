# require 'rails_helper'
#
# feature 'user adds new card', %Q{
#   As a user
#   I want to create a new card
#   So that I can add to my list of vocabulary words
# } do
#
#   before do
#     user = FactoryGirl.create(:user)
#     visit user_session_path
#     sign_in_as user
#   end
#
#   scenario 'add card' do
#
#     visit 'cards/new'
#
#     expect(page).to have_content'Word text'
#     expect(page).to have_content'Meaning text'
#     expect(page).to have_content'User'
#
#
#     # save_and_open_page
#     fill_in 'Word text', with: 'hola'
#     fill_in 'Meaning text', with: 'hello'
#     fill_in 'User', with: 1
#
#     click_button 'Create'
#     expect(page).to have_content('Card was successfully created')
#   end
# end
