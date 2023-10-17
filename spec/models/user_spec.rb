require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with DB columns' do
    {
      email: :string,
      nickname: :string,
      encrypted_password: :string,
      address: :string,
      score: :integer,
      latitude: :float,
      longitude: :float
    }.each do |attribute, type|
      it { is_expected.to have_db_column(attribute).of_type type }
    end
  end
end
