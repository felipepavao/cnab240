# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'

require 'cnab240'

Cnab240.setup do |config|
    # configuracoes aqui
    config.defaults[:empresa_tipo] = "1"
end


arquivo_read = Cnab240::Arquivo::Arquivo.load_from_file("./tmp/ret/SB13104C.RET")[0]
puts arquivo_read.lotes

arquivo_read.lotes.each_with_index do |lote_read, i|
	#puts lote_read.header
	puts lote_read.trailer
end