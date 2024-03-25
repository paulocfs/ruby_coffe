require 'rails_helper'

RSpec.describe Reservation, type: :model do
  
  describe 'name table is reservations' do
    it 'name' do
      expect(described_class.table_name).to eq('reservations')
    end
  end
  
  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:price_hour) }
    it { should have_db_column(:date) }
    it { should have_db_column(:hour) }
    it { should have_db_column(:number_persons) }
    it { should have_db_column(:table_id) }
    it { should have_db_column(:client_id) }
    it { should have_db_column(:active) }
    it { should have_db_column(:deleted_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

end
