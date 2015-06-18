class PortfolioController < ApplicationController
	def home
  end

  def about
  end

  def contact
  end

  def sendform
  	ContactMailer.email_contact(params).deliver
    redirect_to contact_url, notice: "Your message has been sent!"
  end
end
