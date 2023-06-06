class OfferMailer < ApplicationMailer

    def send_offer_email(car, params)
        @car = car
        @params = params

        emails = ['roy@inpublic.com','kevin@inpublic.com','james@inpublic.com','bk147411@gmail.com']
    #    emails = ['bk147411@gmail.com','bablu@csgroupchd.com']

       mail(to: emails, subject: "Offer Request")
   end
   
end
