# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to Jungle')
  end

  def order_confirmation(current_user, order)
    @order = order
    @url = "http://localhost:3000/order/#{@order.id}"
    mail(to: current_user, subject: "Order ID: #{@order.id}")
  end
end
