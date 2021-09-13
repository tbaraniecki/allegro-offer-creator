# frozen_string_literal: true

module AllegroOfferCreator
  module Commands
    module OfferInformation
      class SellerOffers
        LIMIT_MAX = 1000
        ACTIVE_STATUSES = 'ACTIVE,ACTIVATING'.freeze
        HARD_LIMIT_FOR_REQUESTS = 50000
        COMMAND_URL = '/sale/offers'.freeze
        
        def initialize(client, options)
          @client = client
        end

        def call
          # TO DO: call request in loops
          params = {
            'seller.id': options.seller_id,
            limit: LIMIT_MAX,
            offset: options.offset,
            'publication.status': ACTIVE_STATUSES,
          }
        end
      end
    end
  end
end
