require 'rails_helper'

RSpec.describe StoreEmail, type: :model do
  
  context 'db' do

    describe 'name table is store_emails' do
      it 'name' do
        expect(described_class.table_name).to eq('store_emails')
      end
    end

    describe 'name_columns' do
      it { should have_db_column(:id) }
      it { should have_db_column(:email) }
      it { should have_db_column(:active) }
      it { should have_db_column(:deleted_at) }
      it { should have_db_column(:created_at) }
      it { should have_db_column(:updated_at) }
    end

  end
end
