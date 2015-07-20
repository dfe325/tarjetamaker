require 'rails_helper'

feature 'user adds new card', %Q{
  As a user
  I want to create a new card
  So that I can add to my list of vocabulary words
} do

  scenario 'add card' do
    user = FactoryGirl.create(:user)

    visit 'cards/new'

    expect(page).to have_content'Spanish'

    fill_in 'Spanish', with: 'la llave'
    fill_in 'English', with: 'the key'

    click_button 'Create'

    expect(page).to have_content('Card was successfully created')
  end
end
