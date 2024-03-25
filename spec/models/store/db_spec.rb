require 'rails_helper'

RSpec.describe Store, type: :model do
  
  context 'db' do

    describe 'name table is store' do
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


  context 'validations' do

    describe "length" do
      
      # maximo
      it do should validate_length_of(:name).is_at_most(200).on(:create) end
      it do should validate_length_of(:name).is_at_most(200).on(:update) end

    end

    describe "presence" do
      it { should validate_presence_of(:name)}
      it { should validate_presence_of(:date_inauguration)}
    end

    describe "allow_nil or not" do
      it { should_not allow_value(nil).for(:name).on(:create) }
      it { should_not allow_value(nil).for(:name).on(:update) }
      it { should_not allow_value(nil).for(:date_inauguration).on(:create) }
      it { should_not allow_value(nil).for(:date_inauguration).on(:update) }
    end

    describe "allow_blank or not" do
      it { should_not allow_value('').for(:name).on(:create) }
      it { should_not allow_value('').for(:name).on(:update) }
      it { should_not allow_value('').for(:date_inauguration).on(:create) }
      it { should_not allow_value('').for(:date_inauguration).on(:update) }
    end

  end


end
