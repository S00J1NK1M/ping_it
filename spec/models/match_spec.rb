require 'rails_helper'

RSpec.describe Match, type: :model do
  context 'with DB columns' do
    {
      name: :string,
      equipment: :string,
      match_status: :integer,
      match_time: :datetime,
      location: :string
    }.each do |attribute, type|
      it { is_expected.to have_db_column(attribute).of_type type }
    end
  end
end
