# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'

require 'cnab240'

Cnab240.setup do |config|
    # configuracoes aqui
    config.defaults[:empresa_tipo] = "1"
end

pagamento = Cnab240::PagamentoItau.new({ 
      :banco_nome => 'ITAU',
        :empresa_tipo => '2',
        :empresa_numero => '19468242000132',
        :empresa_nome => 'ZOOP TECNOLOGIA LTDA',
        :empresa_agencia_codigo => '8933',
        :empresa_conta_numero => '13392',
        :empresa_agencia_conta_dv => '1',
        :arquivo_sequencia => '1',
        :endereco_logradouro => 'RUA BARAO DE SAO FRANCISCO',
        :endereco_numero => '0373',
        :endereco_cidade => 'Rio de Janeiro',
        :endereco_cep => '20541371',
        :endereco_estado => 'RJ',
        :servico_tipo => '98', # pagamentos - diversos
        :servico_forma => '41', # doc, ted, etc
    })

pagamento << { 
    #:favorecido_banco => '341',
    :favorecido_agencia => '0280',
    :favorecido_conta => '002163',
    :favorecido_agencia_conta_dv => '5',
    :credito_seu_numero => '123',
    :credito_data_pagamento => '30092014',
    :credito_valor_pagamento => '80000',
    :numero_inscricao => '10546501796',
    :favorecido_nome => 'FELIPE SANTIAGO PAVAO SOUSA'
}

# pagamento.add_lote({:servico_tipo => '98', # pagamentos - diversos
#   :servico_forma => '03' # doc, ted, et
# })

File.open(Time.now.strftime("%d%m%Y-%H%M%S").to_s+".txt", 'w'){ |file| file.write(pagamento.string)}

puts pagamento.string