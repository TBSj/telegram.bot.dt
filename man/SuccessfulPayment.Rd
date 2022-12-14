% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bot.R
\name{SuccessfulPayment}
\alias{SuccessfulPayment}
\title{Successful payment}
\usage{
SuccessfulPayment(
  currency,
  total_amount,
  invoice_payload,
  telegram_payment_charge_id,
  provider_payment_charge_id,
  shipping_option_id = NULL,
  name = NULL,
  phone_number = NULL,
  email = NULL,
  country_code = NULL,
  state = NULL,
  city = NULL,
  street_line1 = NULL,
  street_line2 = NULL,
  post_code = NULL
)
}
\arguments{
\item{currency}{Three-letter ISO 4217 currency code, see
\href{https://core.telegram.org/bots/payments#supported-currencies}.}

\item{total_amount}{Price of the product in the smallest units of the currency
(integer, not float/double). For example, for a price of US$ 1.45 pass
amount = 145. See the exp parameter.
in \href{https://core.telegram.org/bots/payments#supported-currencies}, it shows
the number of digits past the decimal point for each currency
(2 for the majority of currencies).}

\item{invoice_payload}{Bot specified invoice payload.}

\item{telegram_payment_charge_id}{Telegram payment identifier.}

\item{provider_payment_charge_id}{Provider payment identifier.}

\item{shipping_option_id}{(Optional). Identifier of the shipping option chosen by the user.}

\item{name}{(Optional). User name. It needs to OrderInfo.}

\item{phone_number}{(Optional). User's phone number. It needs to OrderInfo.}

\item{email}{(Optional). User email. It needs to OrderInfo.}

\item{country_code}{(Optional). Two-letter ISO 3166-1 alpha-2 country code. It needs to ShippingAddress.}

\item{state}{(Optional). State, if applicable. It needs to ShippingAddress.}

\item{city}{(Optional). City. It needs to ShippingAddress.}

\item{street_line1}{(Optional). First line for the address. It needs to ShippingAddress.}

\item{street_line2}{(Optional). Second line for the address. It needs to ShippingAddress.}

\item{post_code}{(Optional). Address post code. It needs to ShippingAddress.}
}
\description{
This object contains basic information about a successful payment.
}
\details{
You can also use it's snake_case equivalent \code{successful_payment}.
}
\examples{
\dontrun{
bot <- Bot(token = bot_token("RTelegramBot"))

bot$SuccessfulPayment(
                      currency = 'USD',
                      total_amount = 145, # 1.45$
                      invoice_payload = 'invoice_payload',
                      telegram_payment_charge_id = 'telegram_payment_charge_id',
                      provider_payment_charge_id = 'provider_payment_charge_id'
                      )
}
}
