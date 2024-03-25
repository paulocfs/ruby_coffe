require 'rails_helper'

RSpec.describe StoreSocialMedium, type: :model do
  
  describe 'name table is store_social_media' do

    it 'name' do
      expect(described_class.table_name).to eq('store_social_media')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:url) }
    it { should have_db_column(:name) }
    it { should have_db_column(:active) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
  
end
