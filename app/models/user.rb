class User < ActiveRecord::Base
  has_many :workdays, foreign_key: "worker_id"
end
