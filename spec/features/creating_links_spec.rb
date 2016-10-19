require 'spec_helper'

feature 'so that I can save a website' do
  scenario "add site's title and address to bookmark manager" do
    visit('/links/new')
    fill_in 'url', with: 'http://www.developermemes.com/'
    fill_in 'title', with: 'funny memes'
    click_button('Add')
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('funny memes')
    end
  end
end
