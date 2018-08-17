require "babosa"
require "active_resource"

module FurltilityActiveResource
  module ActiveResource

    module ActMacro
      def furltility(furl_field_met = :furl_field, options = {})

        define_method :to_param do
          param = id.to_i.to_s
          if respond_to?(furl_field_met) && furl_field = send(furl_field_met)
            furl_field = furl_field.unpack('U*').reject{ |e| e.between?(0x1F600, 0x1F6FF) }.pack('U*').to_slug.normalize.to_s
            param << "-#{furl_field}" unless furl_field.blank?
          end
          param
        end
      end

    end
  end
end

ActiveResource::Base.extend(FurltilityActiveResource::ActiveResource::ActMacro)
