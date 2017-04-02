class Purchase < ActiveRecord::Base

  belongs_to :lemonade_type

  validates :quantity, :lemonade_type_id, presence: true

  after_create :send_sale_notification

  def sale_total
    lemonade_type.price * quantity
  end

  def send_sale_notification
    TellAFriendMailer.new_sale_email(self).deliver
  end

end
