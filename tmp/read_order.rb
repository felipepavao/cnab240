# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'

require 'cnab240'

Cnab240.setup do |config|
    # configuracoes aqui
    config.defaults[:empresa_tipo] = "1"
end


arquivo_read = Cnab240::Arquivo::Arquivo.load_from_file("./tmp/out/SB22114A.RET")[0]

arquivo_read.lotes.each_with_index do |lote_read, i|
	lote_read.segmentos.each do |s|
		puts s.to_s + "\n"
		puts s["credito_nosso_numero"]
	end
	#puts lote_read.segmentos[i].credito_valor_pagamento
end