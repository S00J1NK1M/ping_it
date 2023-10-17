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
