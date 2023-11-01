# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  has_many :movies

  def self.youngest
    Director.where.not(dob: nil).order(dob: :desc).first
  end

  def self.eldest
    Director.where.not(dob: nil).order(dob: :asc).first
  end
end
