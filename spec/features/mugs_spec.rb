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

  scenario 'User can update a mug from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mug'
    fill_in 'Company', with: 'Github'
    fill_in 'Size', with: 'Large'
    click_on 'Add mug'
    expect(page).to have_content 'Github'
    expect(page).to have_content 'Large'
    click_on 'Github'
    expect(page).to have_content 'Github'
    expect(page).to have_content 'Large'
    click_on 'Edit'
    fill_in 'Company', with: 'Apple'
    fill_in 'Size', with: 'Medium'
    click_on 'Update mug'
    expect(page).to have_content 'Apple'
    expect(page).to have_content 'Medium'
    expect(page).to_not have_content 'Github'
    expect(page).to_not have_content 'Large'
  end

  scenario 'User can delete a mug from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mug'
    fill_in 'Company', with: 'Github'
    fill_in 'Size', with: 'Large'
    click_on 'Add mug'
    expect(page).to have_content 'Github'
    expect(page).to have_content 'Large'
    click_on 'Github'
    expect(page).to have_content 'Github'
    expect(page).to have_content 'Large'
    click_on 'Delete'
    expect(page).to_not have_content 'Github'
    expect(page).to_not have_content 'Large'
  end
end