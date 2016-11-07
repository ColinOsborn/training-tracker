class NotificationsController < ApplicationController

  rescue_from StandardError do |exception|
    trigger_sms_alerts(exception)
  end

  def create
    if params[:user_id] == "1"
      send_message(current_user.phone_number, success_message)
    else
    send_message(params[:phone_number], params[:alert_message])
    end
  end

  def trigger_sms_alerts(e)
    @alert_message = "
      [This is a test] ALERT!
      It appears the server is having issues.
      Exception: #{e}.
      Go to: http://newrelic.com for more details."
    @image_url = "http://howtodocs.s3.amazonaws.com/new-relic-monitor.png"

    @admin_list = YAML.load_file('config/administrators.yml')

    begin
      @admin_list.each do |admin|
        phone_number = admin['phone_number']
        send_message(phone_number, @alert_message, @image_url)
      end

      flash[:success] = "Exception: #{e}. Administrators will be notified."
    rescue
      flash[:alert] = "Something when wrong."
    end
    redirect_to '/goals'
  end

  def index
  end

  def server_error
    raise 'A test exception'
  end

  private

    def success_message
      "Way to go #{current_user.name}. You've completed your goal! Let's go set another one!"
    end

    def send_message(phone_number, alert_message)
      # @twilio_number = ENV['TWILIO_NUMBER']
      @twilio_number = "19703553372"
      @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
      message = @client.account.messages.create(
        :from => @twilio_number,
        :to => "19706",
        :body => alert_message,
        
      )
      puts message.to
    end
end
