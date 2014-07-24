class Calendar < ActiveRecord::Base
  before_save :makeDates
  belongs_to :worker, class_name: "User"

  def months
  end

  def dates
  end

  private
  def makeDates
    self.dates = ["TEST"]
  end
  # use find or create by for assigning to user
end
