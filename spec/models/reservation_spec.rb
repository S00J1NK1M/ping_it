require 'rails_helper'

RSpec.describe Reservation, type: :model do
  context 'with DB columns' do
    {
      reservation_time: :datetime

    }.each do |attribute, type|
      it { is_expected.to have_db_column(attribute).of_type type }
    end
  end
end

RSpec.describe Reservation, type: :model do
  context 'associations' do
    it { should belong_to(:pingpong_table) }
    it { should belong_to(:user) }
  end
end
