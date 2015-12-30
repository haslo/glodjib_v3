module SocialMedia
  class FlickrInterface
    class << self

      class CannotAuthenticate < StandardError; end

      def index
        flickr_config = get_flickr_config
        flickr = init_flickraw(flickr_config)
        flickr.photos.search(:user_id => flickr_config['user_id'])
      end

      def create_from(image)
        flickr_config = get_flickr_config
        flickr = init_authenticated_flickraw(flickr_config)
        # TODO
      end

      def update_data_from(image)
        flickr_config = get_flickr_config
        flickr = init_authenticated_flickraw(flickr_config)
        # TODO
      end

      def destroy_for(image)
        flickr_config = get_flickr_config
        flickr = init_authenticated_flickraw(flickr_config)
        # TODO
      end

      private

      # see https://github.com/hanklords/flickraw
      # TODO refactor
      def init_authenticated_flickraw(flickr_config)
        flickr = init_flickraw(flickr_config)
        # TODO move these into db config
        access_token = '72157662278415489-df930380f0b4e82a'
        access_secret = '75cd4930a23cdcc9'
        if access_token.present? && access_secret.present?
          flickr.access_token = access_token
          flickr.access_secret = access_secret
          login = flickr.test.login
          puts "You are now authenticated as #{login.username}"
        else
          token = flickr.get_request_token
          auth_url = flickr.get_authorize_url(token['oauth_token'], :perms => 'delete')
          # TODO this is not a console application ;)
          puts "Open this url in your process to complete the authication process : #{auth_url}"
          puts "Copy here the number given when you complete the process."
          verify = gets.strip
          begin
            flickr.get_access_token(token['oauth_token'], token['oauth_token_secret'], verify)
            login = flickr.test.login
            puts "You are now authenticated as #{login.username} with token #{flickr.access_token} and secret #{flickr.access_secret}"
          rescue FlickRaw::FailedResponse => e
            puts "Authentication failed : #{e.msg}"
            raise CannotAuthenticate.new(e)
          end
        end
      end

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
