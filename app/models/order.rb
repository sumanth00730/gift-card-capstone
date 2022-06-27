class Order < ApplicationRecord
    # enum status: [:out_for_delivery, :delivered, :redeemed]
    validates :rfname, presence: true
    validates :rlname, presence: true
    validates :gcvalue, presence: true
    validates :phone, presence: true, length: { minimum: 10 ,maximum: 10 }
    validates :address, presence: true
    validates :uid, presence: true
end