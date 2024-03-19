require 'rails_helper'

RSpec.describe StoreAdress, type: :model do
 

  context "db" do

    describe "name_table" do
      it "name" do
        expect(described_class.table_name).to eq('store_adresses')
      end
    end

    describe "name_columns" do
      it { should have_db_column(:id) }
      it { should have_db_column(:cep) }
      it { should have_db_column(:address) }
      it { should have_db_column(:number) }
      it { should have_db_column(:neighborhood) }
      it { should have_db_column(:state) }
      it { should have_db_column(:country) }
      it { should have_db_column(:active) }
      it { should have_db_column(:deleted_at) }
      it { should have_db_column(:created_at) }
      it { should have_db_column(:updated_at) }
    end

  end

end
