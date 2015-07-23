require 'rails_helper'

feature 'user deletes a review', %{
  As a user
  I want to sign in
  And delete a review I made
} do

  before do
    user = FactoryGirl.create(:user)
    card = FactoryGirl.create(:card)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
  end

  scenario 'Delete card' do
    card = FactoryGirl.create(:card)
    visit cards_path(card)
    click_link 'Delete Card'

    expect(page).to have_content("Card obliterated!")
  end

end
