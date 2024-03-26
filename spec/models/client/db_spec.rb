require 'rails_helper'

RSpec.describe Client, type: :model do
  
  describe 'name table is clients' do
    it 'name' do
      expect(described_class.table_name).to eq('clients')
    end
  end

  describe 'name_columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:email) }
    it { should have_db_column(:encrypted_password) }
    it { should have_db_column(:fisrt_name) }
    it { should have_db_column(:last_name) }
    it { should have_db_column(:profession) }
    it { should have_db_column(:active) }
    it { should have_db_column(:uid_google) }
    it { should have_db_column(:avatar_url_google) }
    it { should have_db_column(:deleted_at) }
    it { should have_db_column(:reset_password_token) }
    it { should have_db_column(:reset_password_sent_at) }
    it { should have_db_column(:remember_created_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

end
