require "babosa"
require "active_record"

module Furltility
  module ActiveRecord

    module ActMacro
      def furltility(furl_field_met = :furl_field, options = {})

        define_method :to_param do
          param = id.to_s
          if respond_to?(furl_field_met) && furl_field = send(furl_field_met)
            furl_field = furl_field.to_slug.normalize.to_s
            param << "-#{furl_field}" unless furl_field.blank?
          end
          param
        end
      end

    end
  end
end

ActiveRecord::Base.extend(Furltility::ActiveRecord::ActMacro)
