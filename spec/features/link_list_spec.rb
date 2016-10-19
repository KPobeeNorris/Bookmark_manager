require 'spec_helper'

feature 'so I can quickly go to websites I regularly visit' do
  scenario 'see list of links on the homepage' do
    Link.create(url: 'http://www.quickmeme.com/meme/3sg5lh', title: 'Dirty SQL')

    visit('/links')
    expect(page.status_code).to eq(200)
    within 'ul#links' do
      expect(page).to have_content('quick')
    end
  end
end
