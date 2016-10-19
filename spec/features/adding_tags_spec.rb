require 'spec_helper'

feature 'Adding tags' do
  scenario 'User adds a single tag to a link' do
    visit('/links/new')
    fill_in 'url', with: 'https://s-media-cache-ak0.pinimg.com/564x/8d/fa/92/8dfa92e14f57cfe4d8825af14bf3da10.jpg'
    fill_in 'title', with: 'baby hannibal'
    fill_in 'tag', with: 'memes'
    click_button('Add')

    link = Link.first
    expect(link.tags.map(&:tag)).to include('memes')

  end
end
