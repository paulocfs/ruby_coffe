require 'rails_helper'

RSpec.describe Admin, type: :model do

  describe 'name table is admins' do
    it 'name' do
      expect(described_class.table_name).to eq('admins')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:fisrt_name) }
    it { should have_db_column(:last_name) }
    it { should have_db_column(:status_on) }
    it { should have_db_column(:uid) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
    it { should have_db_column(:email) }
    it { should have_db_column(:encrypted_password) }
    it { should have_db_column(:reset_password_token) }
    it { should have_db_column(:reset_password_sent_at) }
    it { should have_db_column(:remember_created_at) }
  end

end
