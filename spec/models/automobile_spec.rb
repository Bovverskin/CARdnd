require 'rails_helper'

RSpec.describe Automobile, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :brand }
    it { is_expected.to have_db_column :model }
    it { is_expected.to have_db_column :year }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :brand }
    it { is_expected.to validate_presence_of :model } 
    it { is_expected.to validate_presence_of :year } 
    it { is_expected.to validate_presence_of :price } 
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:automobile)).to be_valid
    end
  end
end