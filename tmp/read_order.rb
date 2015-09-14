# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'

require 'cnab240'
require 'byebug'


arquivo_read = Cnab240::Arquivo::Arquivo.load_from_file("./tmp/SB090415A.RET")[0]

arquivo_read.lotes.each_with_index do |lote_read, i|
	lote_read.segmentos.each do |seg|
		puts seg.to_s + "\n"
		byebug
		puts seg["credito_nosso_numero"]
	end
	#puts lote_read.segmentos[i].credito_valor_pagamento
end