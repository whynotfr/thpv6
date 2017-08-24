class StaticController < ApplicationController
  def home
  end

  def cursus
  end

  def philosophie
  end

  def faq
  end

  def contact
  end

  
  def inscription
  end

  def realize
  end

  def paiement
    # Amount in cents
    @amount = 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'paiment enregistrement',
      :currency    => 'eur'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
