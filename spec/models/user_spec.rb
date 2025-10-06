require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }

  # it "validate" do
  #   # invalid
  #   ## email
  #   expect(build(:user, email: nil)).to be_invalid
  #   ## password
  #   expect(build(:user, password: nil)).to be_invalid
  #   ## password_confirmation
  #   expect(build(:user, password_confirmation: "aaaaaa")).to be_invalid
  end
end
