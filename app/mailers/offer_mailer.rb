class OfferMailer < ApplicationMailer

    def send_offer_email(car)
        @car = car

        # emails = ['lucy@postyourcars.com','roy@inpublic.com','kevin@inpublic.com','james@inpublic.com']
       emails = ['bk147411@gmail.com','bablu@csgroupchd.com']

       mail(to: emails, subject: "Offer Request")
   end
   
end
