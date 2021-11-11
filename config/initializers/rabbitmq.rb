RABBIT_MQ_CONNECTION = Bunny.new(host:ENV['RABBITMQ_HOST']).start

GENERAL_CHANNEL = RABBIT_MQ_CONNECTION.create_channel(1)

RESPONCE_QUEUE = GENERAL_CHANNEL.queue('pdf_compilation_responce')
MESSAGE_QUEUE = GENERAL_CHANNEL.queue('pdf_compilation')

