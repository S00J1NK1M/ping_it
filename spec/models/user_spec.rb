require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with DB columns' do
    {
      email: :string,
      nickname: :string,
      encrypted_password: :string,
      city: :string,
      score: :integer
    }.each do |attribute, type|
      it { is_expected.to have_db_column(attribute).of_type type }
  	#it { is_expected.to have_db_column(:email).of_type :string }
    #it { is_expected.to have_db_column(:nickname).of_type :string }
    #it { is_expected.to have_db_column(:encrypted_password).of_type :string }
    #it { is_expected.to have_db_column(:city).of_type :string }
    #it { is_expected.to have_db_column(:score).of_type :integer }
  #   it { is_expected.to have_many :matches_as_organiser, class_name: "Match", foreign_key: "organiser_id"}
  #    it { is_expected.to have_many :matches_as_buddy, class_name: "Match", foreign_key: "buddy_id"}
  #    it { is_expected.to have_many :matches_as_winner, class_name: "Match", foreign_key: "winner_id"}
  # it { is_expected.to have_many(:pingpong_tables).through :reservations }
    end
  end
end
