class RoomMessageMailer < ApplicationMailer
  def send_chat_message
    @message = params[:message]
    @email = @message.user.email
    mail(to: "spree@example.com", subject: "  Chat Message   #{@email}  sent : #{@message.message}")
  end

end
