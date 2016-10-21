require 'spec_helper'

feature 'Filtering tags' do
  scenario 'User can filter links by tag' do
    visit('/links/new')
    fill_in 'url', with: 'http://abovethecrowd.com/wp-content/uploads/2014/01/bubbles-water-transparent-design.jpg'
    fill_in 'title', with: 'water bubbles'
    fill_in 'tag', with: 'bubbles'
    click_button('Add')
    # link = Link.first

    visit('/links/new')
    fill_in 'url', with: 'http://www.hotmail.com'
    fill_in 'title', with: 'hotmail'
    fill_in 'tag', with: 'email'
    click_button('Add')

    visit('/tags')
    fill_in 'filter', with: 'bubbles'
    click_button('Add')
    expect(page).to have_content('bubbles')

  end
end
