class InquiryMailer < ApplicationMailer
    ##### 送信元アドレス
  default from: "example@example.com"
  ##### 送信先アドレス
  default to: "nzyume.k@gmail.com"
  
    def send_mail(inquiry)
      @inquiry = inquiry
      mail(
        :subject => 'お問い合わせを承りました'
      )
    end
end
