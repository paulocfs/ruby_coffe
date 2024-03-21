require 'rails_helper'

RSpec.describe Store, type: :model do
  

  context 'db' do

    describe 'store' do
      it 'name' do
        expect(described_class.table_name).to eq('stores')
      end
    end

    describe 'name_columns' do
      it { should have_db_column(:id) }
      it { should have_db_column(:name) }
      it { should have_db_column(:date_inauguration) }
      it { should have_db_column(:created_at) }
      it { should have_db_column(:updated_at) }
    end

  end


end
