# frozen_string_literal: true

module EmailShortDateFormat
  module ApplicationHelperExtension
    extend ActiveSupport::Concern

    def short_date(dt)
      I18n.l(dt, format: SiteSetting.email_short_date_format_type)
    end
  end
end
