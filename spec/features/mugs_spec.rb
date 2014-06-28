require 'spec_helper'

feature 'CRUD mugs' do
  scenario 'User can see Welcome on homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mug'
    fill_in 'Company', with: 'Github'
    fill_in 'Size', with: 'Large'
    click_on 'Add mug'
    expect(page).to have_content 'Github'
    expect(page).to have_content 'Large'
  end
end