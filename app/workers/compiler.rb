require 'sneakers'

class Compiler
  include Sneakers::Worker
  from_queue 'pdf_compilation.send'

  def work(msg)
    # result = ::PdfCompiler.call(msg)
    # responce = result[:errors].blank? ? { success: true, data: result[:data] } : { success: false, data: result[:errors] }
    publish("#{msg}, nothing was implemented", to_queue: 'pdf_compilation.responce', durable: true)

    ack!
  end
end
