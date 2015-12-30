module Concerns
  module InterfaceAutoloader
    extend ActiveSupport::Concern
    included do

      def load_interfaces_from(path)
        klasses = Dir.glob(path + '*_interface.rb').map do |klass_path|
          klass_path.split(/[\/\\]/).last.split('.').first.camelize
        end.map do |klass_name|
          "::#{path.to_s.split(/[\/\\]/).last.camelize}::#{klass_name}".constantize
        end
        Hash[
          klasses.map do |klass|
            [klass.name.demodulize.underscore.gsub('_interface', '').to_sym, klass]
          end
        ]
      end

    end
  end
end
