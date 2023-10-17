require 'rails_helper'

RSpec.describe PingpongTable, type: :model do
  context 'with DB columns' do
    {
      name: :string,
      address: :string,
      description: :text,
      category: :string,
      availability: :boolean,
      latitude: :float,
      longitude: :float

    }.each do |attribute, type|
      it { is_expected.to have_db_column(attribute).of_type type }
    end
  end
end
