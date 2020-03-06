class Task < ApplicationRecord
  belongs_to :user, optional: true
  enum status: {
    "未実施": "0",
    "実施中": "1",
    "達成！": "2"
  }
end
