require "babosa"
require "active_resource"

module FurltilityActiveResource
  module ActiveResource

    module ActMacro
      def furltility furl_field_met = :furl_field, options = {}

        define_method :to_param do
          param = id.to_i.to_s
          if respond_to?(furl_field_met) && furl_field = send(furl_field_met)
            furl_field = furl_field.force_encoding('utf-8').encode

            # symbols & pics
            regex = /[\u{1f300}-\u{1f5ff}]/
            furl_field = furl_field.gsub regex, ''

            # enclosed chars
            regex = /[\u{2500}-\u{2BEF}]/ # I changed this to exclude chinese char
            furl_field = furl_field.gsub regex, ""

            # emoticons
            regex = /[\u{1f600}-\u{1f64f}]/
            furl_field = furl_field.gsub regex, ""

            #dingbats
            regex = /[\u{2702}-\u{27b0}]/
            furl_field = furl_field.gsub regex, ""

            furl_field = furl_field.to_slug.normalize.to_s
            param << "-#{furl_field}" unless furl_field.blank?
          end
          param
        end
      end
    end
  end
end

ActiveResource::Base.extend(FurltilityActiveResource::ActiveResource::ActMacro)
