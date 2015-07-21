require 'rails_helper'

feature 'user adds new card', %Q{
  As a user
  I want to create a new card
  So that I can add to my list of vocabulary words
} do

  scenario 'add card' do
    user = FactoryGirl.create(:user)

    visit 'cards/new'

    expect(page).to have_content'Word text'
    expect(page).to have_content'Meaning text'

    # save_and_open_page
    fill_in 'Word text', with: 'hola'
    fill_in 'Meaning text', with: 'hello'

    click_button 'Create'

    expect(page).to have_content('Card was successfully created')
  end
end
