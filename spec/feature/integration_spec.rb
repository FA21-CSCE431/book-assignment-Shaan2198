# location: spec/feature/integration_spec.rb
require 'rails_helper'
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    end
  end
RSpec.describe 'Adding an Author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'J.K.Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K.Rowling')
    end
end

RSpec.describe 'Adding a Date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Date', with: '2021-09-14'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2021-09-14')
    end
end



RSpec.describe 'Adding a Price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with:'23'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('23')
    end
end
