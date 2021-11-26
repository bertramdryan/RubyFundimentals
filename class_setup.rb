class ApiConnector 
    # attr_accessor :title, :description, :url

    def initialize(title: , description: , url: url = "google.com")
        @title = title
        @description = description
        @url = url
    end

    def testing_initializers
        puts @title
        puts @description
        puts @url
    end
end

class SmsConnector < ApiConnector
    private
        def send_sms
            `curl -X POST -d "notification[title]=#{@title}" -d "notification[url] = http://edutechional-resty.herokuapp.com/posts/1" #{@url}`
        end
end

api = SmsConnector.new(title: "Test", description: "Testing connection", url: "http://edutechional-smsy.herokuapp.com/notifications")


api.testing_initializers
api.send_sms
