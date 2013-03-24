module Alphabeta
  class SignupMailer < ActionMailer::Base
    default from: "from@example.com"

    def intro_mail(email)
      @header = I18n.t('intro_mail.header')
      @content = I18n.t('intro_mail.content')
      @salutation = I18n.t('intro_mail.salutation')
      @from = I18n.t('intro_mail.from')
      mail(to: email, subject: I18n.t('intro_mail.subject'))
    end
  end
end
