Rails.configuration.stripe = {
  :publishable_key => ENV['pk_live_3mU8BB8PWIio9HPrRXq5ytHG'],
  :secret_key      => ENV['sk_live_coQLDE0XiqEmneLn6ODSRAlh']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]