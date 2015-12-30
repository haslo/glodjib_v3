class StorageManager
  include ::Concerns::InterfaceAutoloader

  def initialize
    @interfaces = load_interfaces_from(Rails.root + 'app' + 'interfaces' + 'storage')
  end

end
