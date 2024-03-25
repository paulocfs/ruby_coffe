require 'rails_helper'

RSpec.describe Service, type: :model do
 
  
  describe 'name table is services' do
    it 'name' do
      expect(described_class.table_name).to eq('services')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:name) }
    it { should have_db_column(:description) }
    it { should have_db_column(:active) }
    it { should have_db_column(:deleted_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
  
end
