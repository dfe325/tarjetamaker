require 'coveralls'
Coveralls.wear!('rails')

require 'rails_helper'

feature 'user adds new card', %Q{
  As a user
  I want to create a new card
  So that I can add to my list of vocabulary words
} do

  before do
    user = FactoryGirl.create(:user)
    card = FactoryGirl.create(:card)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('Sign Out')
  end

  scenario 'add card' do

    visit 'cards/new'

    expect(page).to have_content'Front'
    expect(page).to have_content'Back'

    # save_and_open_page
    fill_in 'Front', with: 'hola'
    fill_in 'Back', with: 'hello'

    click_button 'Create'
    expect(page).to have_content('Card was successfully created')
  end
end
