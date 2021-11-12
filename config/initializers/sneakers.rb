Sneakers.configure  connection: Bunny.new(host:ENV['RABBITMQ_HOST']),
                    exchange: "pdf_compilation",
                    exchange_type: :topic,
                    durable: true,
                    auto_delete: false,
                    log: STDOUT

Sneakers.logger.level = Logger::DEBUG