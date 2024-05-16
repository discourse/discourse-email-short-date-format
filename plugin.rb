# frozen_string_literal: true

# name: discourse-email-short-date-format
# about: Discourse mini-plugin to change the short date format in emails.
# version: 1.0
# authors: Penar Musaraj

after_initialize do
  require_relative "lib/email_short_date_format/application_helper_extension"

  reloadable_patch { ApplicationHelper.prepend(EmailShortDateFormat::ApplicationHelperExtension) }
end
