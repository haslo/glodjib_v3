class SocialMediaManager
  include ::Concerns::InterfaceAutoloader
  attr_reader :interfaces

  class NotAllInterfacesFound < StandardError; end

  def initialize
    @interfaces = load_interfaces_from(Rails.root + 'app' + 'interfaces' + 'social_media')
  end

  def delegate_to_interfaces(method, target_interfaces, *args)
    get_interfaces_for(target_interfaces).each do |_name, klass|
      klass.__send__(method, *args)
    end
  end

  private

  def get_interfaces_for(target_interfaces)
    targets = Array(target_interfaces)
    found_interfaces = @interfaces.select do |name, _klass|
      targets.delete(name)
    end
    raise NotAllInterfacesFound.new("Not found: #{targets.join(', ')}") if targets.length > 0
    found_interfaces
  end

end
