class Task < ApplicationRecord
  has_one_attached :image #画像添付用（1タスクに１画像を紐つけ）

  #以下ransackを利用した検索機能への制限
  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
