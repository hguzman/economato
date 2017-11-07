# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  nombre      :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Activity < ApplicationRecord
  has_many :consolidados
end
