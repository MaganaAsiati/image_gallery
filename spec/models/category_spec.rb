require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Tom', email: 'wvw@gmail.com', password: 'dwefwe')
  end

  it 'is valid with valid attributes ' do
    expect(Category.create(user: @user, icon: 'wcwrknvevnenevvk', title: 'category', description: 'ffff')).to be_valid
  end

  it 'is not valid with icon empty ' do
    expect(Category.create(user: @user, icon: '', title: 'category', description: 'wwwwww')).to_not be_valid
  end

  it 'is not valid with title empty ' do
    expect(Category.create(user: @user, icon: 'wcwrknvevnenevvk', title: '', description: 'wwwwww')).to_not be_valid
  end
end
