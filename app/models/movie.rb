class Movie < ApplicationRecord
  has_many :bookmarks

  # before_destroy :check_for_bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  private

  # def check_for_bookmarks
   # if bookmarks.count > 0
    #  errors.add(:base, "Cannot delete movie with bookmarks")
     # throw :abort
    #end
  # end
end
