require 'rails_helper'

RSpec.describe Deal, type: :model do
  before :each do
    @user = User.create(name: 'Tom', email: 'wvw@gmail.com', password: 'dwefwe')
    @category = Category.create(user: @user, icon: 'wcwrknvevnenevvk', title: 'category',
                                description: 'category description')
  end

  it 'is valid with valid attributes ' do
    expect(Deal.create(user: @user, category: @category, title: 'deal', amount: 24, icon: 'decvcvtg')).to be_valid
  end

  it 'is not valid with empty name ' do
    expect(Deal.create(user: @user, category: @category, title: '', amount: 24, icon: 'decvcvtg')).to_not be_valid
  end

  it 'is not valid with amount value 0' do
    expect(Deal.create(user: @user, category: @category, title: 'deal', amount: 0, icon: 'decvcvtg')).to_not be_valid
  end
end
