# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

MESSAGE_QUEUE.subscribe do |_delivery_info, _metadata, data|
  p"#{data}-----------------------"
  # SendFileToUser.call(data)
end
