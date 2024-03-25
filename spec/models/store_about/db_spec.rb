require 'rails_helper'

RSpec.describe StoreAbout, type: :model do
 

  describe 'name table is store_abouts' do
    it 'name' do
      expect(described_class.table_name).to eq('store_abouts')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:vision) }
    it { should have_db_column(:history) }
    it { should have_db_column(:active) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

end
