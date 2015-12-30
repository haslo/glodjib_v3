module SocialMedia
  class FlickrInterface
    class << self

      def index
        flickr_config = get_flickr_config
        flickr = init_flickraw(flickr_config)
        flickr.photos.search(:user_id => flickr_config['user_id'])
      end

      def create_from(image)
        # TODO
      end

      def update_data_from(image)
        # TODO
      end

      def destroy_for(image)
        # TODO
      end

      private

      # see https://github.com/hanklords/flickraw
      def init_flickraw(flickr_config)
        FlickRaw.api_key = flickr_config['api_key']
        FlickRaw.shared_secret = flickr_config['shared_secret']
        FlickRaw::Flickr.new
      end

      def get_flickr_config
        YAML.load_file(Rails.root.join('config', 'accounts.yml'))[Rails.env]['flickr']
      end

    end
  end
end
