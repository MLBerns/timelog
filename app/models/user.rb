class User < ActiveRecord::Base
  has_many :workdays, foreign_key: "worker_id"
  has_one :calendar, foreign_key: "worker_id"
  after_create :create_calendar

  require 'bcrypt'

  def password
    @password ||= BCrypt::Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def pretty_punch_time
    self.punch_in_time.strftime("%I:%M %p")
  end

  def create_calendar
      self.calendar = Calendar.create
  end

  private
  def self.authenticate(username, password)
    current_user = User.find_by_username(username)
    if current_user && current_user.password == password
      return current_user
    else
      return nil
    end
  end
end