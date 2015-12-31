module SocialMedia
  class TwitterInterface
    class << self

      class CannotAuthenticate < StandardError; end

      def index
        client = init_twitter(get_twitter_config)
        # TODO
      end

      def create_from(image)
        client = init_twitter(get_twitter_config)
        # TODO
      end

      def update_data_from(image)
        client = init_twitter(get_twitter_config)
        client.update(image)
      end

      def destroy_for(image)
        client = init_twitter(get_twitter_config)
        # TODO
      end

      private

      def get_twitter_config
        YAML.load_file(Rails.root.join('config', 'accounts.yml'))[Rails.env]['twitter']
      end

      def init_twitter(twitter_config)
        Twitter::REST::Client.new do |config|
          [:consumer_key,  :consumer_secret, :access_token, :access_token_secret].each do |config_key|
            config.__send__("#{config_key}=", twitter_config[config_key.to_s])
          end
        end
      end

    end
  end
end
