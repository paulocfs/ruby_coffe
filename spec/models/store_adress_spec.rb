require 'rails_helper'

RSpec.describe StoreAdress, type: :model do
 
  context 'db' do

    describe 'name_table' do
      it 'name' do
        expect(described_class.table_name).to eq('store_adresses')
      end
    end

    describe 'name_columns' do
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



  context 'validations' do

    describe 'length' do

      # minimo - create
      it do should validate_length_of(:cep).is_at_least(8).on(:create) end
     
      # minimo - update
      it do should validate_length_of(:cep).is_at_least(8).on(:update) end
      
      # maximo - create
      it do should validate_length_of(:cep).is_at_most(10).on(:create) end
      it do should validate_length_of(:address).is_at_most(200).on(:create) end
      it do should validate_length_of(:neighborhood).is_at_most(200).on(:create) end
      it do should validate_length_of(:state).is_at_most(50).on(:create) end
      it do should validate_length_of(:country).is_at_most(60).on(:create) end
      
      # maximo - update
      it do should validate_length_of(:cep).is_at_most(10).on(:update) end
      it do should validate_length_of(:address).is_at_most(200).on(:update) end
      it do should validate_length_of(:neighborhood).is_at_most(200).on(:update) end
      it do should validate_length_of(:state).is_at_most(50).on(:update) end
      it do should validate_length_of(:country).is_at_most(60).on(:update) end

    end

    describe 'presence' do
      it { should validate_presence_of(:cep)}
      it { should validate_presence_of(:address)}
      it { should validate_presence_of(:number) }
      it { should validate_presence_of(:neighborhood) }
      it { should validate_presence_of(:state) }
      it { should validate_presence_of(:country) }
     
    end

    describe 'format' do

    end

    describe 'allow or not nil' do 
      it { should_not allow_value(nil).for(:cep).on(:create) }
      it { should_not allow_value(nil).for(:cep).on(:update) }
      it { should_not allow_value(nil).for(:address).on(:create) }
      it { should_not allow_value(nil).for(:address).on(:update) }
      it { should_not allow_value(nil).for(:number).on(:create) }
      it { should_not allow_value(nil).for(:number).on(:update) }
      it { should_not allow_value(nil).for(:neighborhood).on(:create) }
      it { should_not allow_value(nil).for(:neighborhood).on(:update) }
      it { should_not allow_value(nil).for(:state).on(:create) }
      it { should_not allow_value(nil).for(:state).on(:update) }
      it { should_not allow_value(nil).for(:country).on(:create) }
      it { should_not allow_value(nil).for(:country).on(:update) }
      it { should_not allow_value(nil).for(:active).on(:create) }
      it { should_not allow_value(nil).for(:active).on(:update) }
    end

    describe 'not allow blank' do 
      it { should_not allow_value('').for(:cep).on(:create) }
      it { should_not allow_value('').for(:cep).on(:update) }
      it { should_not allow_value('').for(:address).on(:create) }
      it { should_not allow_value('').for(:address).on(:update) }
      it { should_not allow_value('').for(:number).on(:create) }
      it { should_not allow_value('').for(:number).on(:update) }
      it { should_not allow_value('').for(:neighborhood).on(:create) }
      it { should_not allow_value('').for(:neighborhood).on(:update) }
      it { should_not allow_value('').for(:state).on(:create) }
      it { should_not allow_value('').for(:state).on(:update) }
      it { should_not allow_value('').for(:country).on(:create) }
      it { should_not allow_value('').for(:country).on(:update) }
      it { should_not allow_value('').for(:active).on(:create) }
      it { should_not allow_value('').for(:active).on(:update) }
    end

    describe 'inclusion' do 
      it { should validate_inclusion_of(:active).in_array([true, false]) }
    end



    
  end

end
