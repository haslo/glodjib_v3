class SocialMediaManager
  include ::Concerns::InterfaceAutoloader

  def initialize
    @interfaces = load_interfaces_from(Rails.root + 'app' + 'interfaces' + 'social_media')
  end

end
