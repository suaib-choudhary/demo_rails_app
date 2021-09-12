module FileRecordsHelper
    # def visiting_card_url
    #     polymorphic_url(visiting_card, host: Rails.application.config.base_api_path) if visiting_card.attached?
    #   end

    def get_share_url(file)
        link = Link.create(url: "#{Rails.application.routes.url_helpers.rails_blob_url(file, host: root_url,port:3000)}")
        link.short(root_url,3000)
    end
end
