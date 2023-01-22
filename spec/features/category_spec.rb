require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  describe 'Category' do
    before :each do
      @tom = User.create(name: 'Tom', email: 'wvw@gmail.com', password: 'dwefwe')
      visit root_path
      click_on 'Sign in'
      fill_in 'user[email]', with: 'wvw@gmail.com'
      fill_in 'user[password]', with: 'dwefwe'
      click_on 'Login'
      @category = Category.create(user: @tom, icon: 'wcwrknvevnenevvk', title: 'my_category')
      @deal_first = Deal.create(user: @tom, category: @category, title: 'deal', amount: 24, icon: 'wcwr')
      @deal_sec = Deal.create(user: @tom, category: @category, title: 'deal', amount: 200, icon: 'deal')
    end

    feature 'Category index page' do
      background { visit categories_path }

      it 'I can see the navbar title' do
        expect(page).to have_content('Categories')
      end

      it 'I can see the button to create new category' do
        expect(page).to have_content('New category')
      end

      it 'I can see the button to Log out' do
        expect(page).to have_content('Log out')
      end

      it 'I can see the total price of a category' do
        expect(page).to have_content('24')
      end

      it 'I can see the category title' do
        expect(page).to have_content(@category.title.to_s)
      end

      it 'I can be redirect to deals when click on a category' do
        click_link 'my_category'
        expect(current_path).to eq category_deals_path(@category.id)
      end
    end
  end
end

