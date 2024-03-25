require 'rails_helper'

RSpec.describe StoreHour, type: :model do
 
  describe 'name table is store_hours' do

    it 'name' do
      expect(described_class.table_name).to eq('store_hours')
    end
    
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:monday) }
    it { should have_db_column(:tuesday) }
    it { should have_db_column(:wednesday) }
    it { should have_db_column(:thursday) }
    it { should have_db_column(:friday) }
    it { should have_db_column(:saturday) }
    it { should have_db_column(:sunday) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
end
