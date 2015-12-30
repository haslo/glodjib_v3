class StorageManager
  include ::Concerns::InterfaceAutoloader
  attr_reader :interfaces

  def initialize
    @interfaces = load_interfaces_from(Rails.root + 'app' + 'interfaces' + 'storage')
  end

end
