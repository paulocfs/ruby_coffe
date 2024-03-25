require 'rails_helper'

RSpec.describe Testimonial, type: :model do

  describe 'name table is testimonials' do

    it 'name' do
      expect(described_class.table_name).to eq('testimonials')
    end
    
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:client_id) }
    it { should have_db_column(:body) }
    it { should have_db_column(:read_admin) }
    it { should have_db_column(:active) }
    it { should have_db_column(:deleted_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

end
