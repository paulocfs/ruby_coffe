require 'rails_helper'

RSpec.describe Table, type: :model do

  describe 'name table is tables' do
    it 'name' do
      expect(described_class.table_name).to eq('tables')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:name) }
    it { should have_db_column(:total_persons) }
    it { should have_db_column(:description) }
    it { should have_db_column(:active) }
    it { should have_db_column(:deleted_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
end
