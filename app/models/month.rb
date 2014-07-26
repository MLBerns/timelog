class Month < ActiveRecord::Base
  has_many :days
  belongs_to :calendar
  after_create :createDays

  def createDays

  end
end
