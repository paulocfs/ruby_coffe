require 'rails_helper'

RSpec.describe Offer, type: :model do
  
  describe 'name table is offers' do
    it 'name' do
      expect(described_class.table_name).to eq('offers')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:initial_date) }
    it { should have_db_column(:final_date) }
    it { should have_db_column(:description) }
    it { should have_db_column(:day_week) }
    it { should have_db_column(:active) }
    it { should have_db_column(:deleted_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

end
