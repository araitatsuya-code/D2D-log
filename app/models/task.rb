class Task < ApplicationRecord
  include RankedModel 
  ranks :row_order , with_same: :user_id 
  belongs_to :user, optional: true
  enum status: {
    "未実施": "0",
    "実施中": "1",
    "達成！": "2"
  }
end
