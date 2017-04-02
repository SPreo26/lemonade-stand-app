class TellAFriendMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def new_sale_email(purchase)
    @purchase = purchase
    mail(to: 'carla@carla.com', subject: 'You have a new sale!')
  end
end
