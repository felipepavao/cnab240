# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'

require 'byebug'
require 'cnab240'
require 'date'

@pagamento = Cnab240::PagamentoItau.new({ 
    :banco_nome                 => 'ITAU',
    :empresa_tipo               => '2',
    :empresa_numero             => '19468242000132',
    :empresa_nome               => 'ZOOP TECNOLOGIA LTDA', #identificador na ccorrente
    :empresa_agencia_codigo     => '8933',
    :empresa_conta_numero       => '13392',
    :empresa_agencia_conta_dv   => '1',
    :arquivo_sequencia          => '1',
    :endereco_logradouro        => 'RUA BARAO DE SAO FRANCISCO',
    :endereco_numero            => '0373',
    :endereco_cidade            => 'Rio de Janeiro',
    :endereco_cep               => '20541371',
    :endereco_estado            => 'RJ',
})

@pagamento << { 
    :favorecido_banco => '033',
    :favorecido_agencia => '4571',
    :favorecido_conta => '01018721',
    :favorecido_agencia_conta_dv => '9',
    :credito_seu_numero => '001',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '1539',
    :numero_inscricao => '39135748753',
    :favorecido_nome => 'Francisco Genesio Sousa'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '03'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.add_lote({
    :controle_lote => '2'
})

@pagamento << { 
    :favorecido_banco => '033',
    :favorecido_agencia => '3463',
    :favorecido_conta => '01086317',
    :favorecido_agencia_conta_dv => '2',
    :credito_seu_numero => '002',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '119513',
    :numero_inscricao => '29026415400',
    :favorecido_nome => 'Severino Carlos da Silva'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '3'
})

@pagamento << { 
    :favorecido_banco => '237',
    :favorecido_agencia => '3060',
    :favorecido_conta => '16707',
    :favorecido_agencia_conta_dv => '0',
    :credito_seu_numero => '003',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '8397',
    :numero_inscricao => '10676257712',
    :favorecido_nome => 'Fabiana Almeida Pavan'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '03'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '4'
})

@pagamento << { 
    :favorecido_banco => '237',
    :favorecido_agencia => '2135',
    :favorecido_conta => '1158',
    :favorecido_agencia_conta_dv => '4',
    :credito_seu_numero => '004',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '2396',
    :numero_inscricao => '02581383780',
    :favorecido_nome => 'Marcio Rodrigues Gomes'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '03'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '5'
})

@pagamento << { 
    :favorecido_banco => '104',
    :favorecido_agencia => '1484',
    :favorecido_conta => '00021175',
    :favorecido_agencia_conta_dv => '7',
    :credito_seu_numero => '005',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '3783',
    :numero_inscricao => '06013170843',
    :favorecido_nome => 'Cirlene Rosa Vieira da Conceicao'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '03'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '6'
})

@pagamento << { 
    :favorecido_banco => '104',
    :favorecido_agencia => '0222',
    :favorecido_conta => '00005193',
    :favorecido_agencia_conta_dv => '3',
    :credito_seu_numero => '006',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '2639',
    :numero_inscricao => '08612834732',
    :favorecido_nome => 'Adnan Stutz da Silva Filho'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '03'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '7'
})

@pagamento << { 
    :favorecido_banco => '104',
    :favorecido_agencia => '1343',
    :favorecido_conta => '00011477',
    :favorecido_agencia_conta_dv => '4',
    :credito_seu_numero => '007',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
    :credito_valor_pagamento => '9330',
    :numero_inscricao => '87407825300',
    :favorecido_nome => 'Marcio Tavares de Paiva'
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '03'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '13392'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '1'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

File.open(File.join("./tmp", Time.now.strftime("%d%m%y").to_s+"-"+Random.new.rand(10..100).to_s+".REM"), 'w'){ |file| file.write(@pagamento.string)}
puts @pagamento.string