class PdfCompiler < ApplicationService
  def new(data)
    @data = data
  end

  def call
    # TODO generation of pdf file
    result = {}
    result[:errors] = "Initial msg - #{@data}. Compiler not implemented yet. Pong."
    result
  end
end