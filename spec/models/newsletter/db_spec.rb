require 'rails_helper'

RSpec.describe Newsletter, type: :model do

  describe 'name table is newsletters' do
    it 'name' do
      expect(described_class.table_name).to eq('newsletters')
    end
  end
  
  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:email) }
    it { should have_db_column(:active) }
    it { should have_db_column(:adm_notified) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
  
end
