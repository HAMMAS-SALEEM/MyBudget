require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Hammas', email: 'hammas@email.com', password: 'hammas')
    @user.confirm
  end
  describe 'Testing the validations for user model' do
    it 'should be valid' do
      expect(@user).to be_valid
    end
    it 'should be valid' do
      expect(@user.name).to eq 'Hammas'
    end
    it 'should be valid' do
      expect(@user.email).to eq 'hammas@email.com'
    end
    it 'should be valid' do
      expect(@user.password).to eq 'hammas'
    end
  end
end