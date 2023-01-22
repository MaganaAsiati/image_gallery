require 'rails_helper'

RSpec.describe 'User', type: :feature do
  describe 'User' do
    feature 'Category index page' do
      background { visit root_path }

      it 'I can see the Login Page' do
        expect(page).to have_content('Sign in')
      end

      it 'I can see the Sign up Page' do
        expect(page).to have_content('Sign up')
      end
    end
  end
end
