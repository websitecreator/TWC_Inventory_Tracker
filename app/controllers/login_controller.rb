class LoginController < ApplicationController
        def index
	        # render template
		# TODO change route to login / POST
                # render "index"
                render plain: "OK"
	end

	def login
                client = Databasedotcom::Client.new("config/databasedotcom.yml")
                client.authenticate :username => 'sampaul@berkeley.edu', :password => 'pleasedontkillme1TfPa8Eb0NneMsYA56IWaYDvd'
                client.materialize("Contact")
                #contact = SFDC::Contact.find_by_email(email_address_field)
                #password = contact.Password__c

                #if password == password_field:
                	# GRANT ACCESS
                #else:
                	# DENY ACCESS
	end

# Added Password field to Contact.
# Connected App:        All users may self authorize, relax ip restrictions
end