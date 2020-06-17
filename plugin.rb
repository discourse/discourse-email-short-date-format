# frozen_string_literal: true

# name: discourse-email-short-date-format
# about: Discourse mini-plugin to change the short date format in emails.
# version: 1.0
# authors: Penar Musaraj

after_initialize do
  ApplicationHelper.class_eval do
    def short_date(dt)
      return I18n.l(dt, format: SiteSetting.email_short_date_format_type)
    end
  end
end
