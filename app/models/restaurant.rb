# == Schema Information
#
# Table name: restaurants
#
#  id              :bigint(8)        not null, primary key
#  name            :string           not null
#  description     :text             not null
#  cost            :integer
#  phone           :string
#  website         :string
#  payment_options :string
#  dress_code      :string
#  neighborhood    :string
#  cross_street    :string
#  parking_details :string
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address         :string           not null
#  email           :string           not null
#  cuisine         :string
#  rating          :integer
#

class Restaurant < ApplicationRecord
  validates :name, :description, :address, :cost, :email, :user_id, presence: true
  validates :cost, inclusion: {in: [0, 1, 2, 3, 4]}
  validates :rating, inclusion: {in: [0, 1, 2, 3, 4, 5]}

  has_many_attached :photos
  has_one_attached :profile_photo

  belongs_to :user

  def self.find_by_name(str)
    return Restaurant.all if str.nil?

    matches = []

    Restaurant.all.each do |rest|
      if rest.name.downcase.include?(str.downcase)
        matches << rest
      end
    end

    matches
  end
end
