class ApplicationController < ActionController::Base

  def home
    unless params.dig(:user).nil?
      email = "Detalhes do pedido:\n\nEmail: "+params[:user][:address]

      jerry = "\njerry: "+params[:jerry][:price]
      dave = "\ndave: "+params[:dave][:price]
      bob = "\nbob: "+params[:bob][:price]
      kevin = "\nkevin: "+params[:kevin][:price]
      phil = "\nphil: "+params[:phil][:price]

      email_body = email+jerry+dave+bob+kevin+phil

      ActionMailer::Base.mail(from: "me@example.com", to: "joaotosto@startecexp.com", subject: "Reserva na Minions Store", body: email_body).deliver
    end


  end

end
