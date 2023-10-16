class Movie < ApplicationRecord
  enum status: {unreleased: 0, released: 2}

  belongs_to :director
  belongs_to :genre
end
