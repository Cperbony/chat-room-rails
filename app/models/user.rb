# frozen_string_literal: true
class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Ancient', 'Broken', 'Creative', 'Dangerous', 'Effective', 'Flying', 'Gilded']
    noums = ['Higway', 'Interm', 'Jackhammer', 'Lion', 'Master']

    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{noums.sample}-#{number}"
    create(username: username)
  end
end
