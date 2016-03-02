class Order < ActiveRecord::Base
  belongs_to :widget
  belongs_to :custom

  validates :widget, presence: true
  validates :customer, presence: true
  validates :quantity, presence: true
  validates :shipment_status, presence: true
end
