require 'rails_helper'

RSpec.describe Match, type: :model do
  context 'with DB columns' do
    {
      name: :string,
      equipment: :boolean,
      match_status: :integer,
      match_time: :datetime,
      location: :string
    }.each do |attribute, type|
      it { is_expected.to have_db_column(attribute).of_type type }
    end
  end
end

RSpec.describe Match, type: :model do
  context 'associations' do
    it { should belong_to(:organiser).class_name('User').with_foreign_key('organiser_id') }
    it { should belong_to(:buddy).class_name('User').with_foreign_key('buddy_id') }
    it { should belong_to(:winner).class_name('User').with_foreign_key('winner_id') }
  end
end
