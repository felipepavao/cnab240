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
    :empresa_conta_numero       => '16544',
    :empresa_agencia_conta_dv   => '4',
    :arquivo_sequencia          => '1',
    :endereco_logradouro        => 'RUA BARAO DE SAO FRANCISCO',
    :endereco_numero            => '0373',
    :endereco_cidade            => 'Rio de Janeiro',
    :endereco_cep               => '20541371',
    :endereco_estado            => 'RJ',
})

@pagamento << {
    :favorecido_banco => '001',
    :favorecido_agencia => '3195',
    :favorecido_conta => '24420',
    :favorecido_agencia_conta_dv => '1',
    :credito_valor_pagamento => '34000',
    :numero_inscricao => '11418815000101',
    :favorecido_nome => 'LUIZ PAULO GOMES CUNHA',
    :credito_seu_numero => '001',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.add_lote({
    :controle_lote => '2'
})

@pagamento << {
    :favorecido_banco => '104',
    :favorecido_agencia => '3370',
    :favorecido_conta => '00000380',
    :favorecido_agencia_conta_dv => '7',
    :credito_valor_pagamento => '8500',
    :numero_inscricao => '00294565760',
    :favorecido_nome => 'FABIO FERREIRA FELIX',
    :credito_seu_numero => '002',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
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
    :favorecido_agencia => '2179',
    :favorecido_conta => '17557',
    :favorecido_agencia_conta_dv => '9',
    :credito_valor_pagamento => '8500',
    :numero_inscricao => '26499593000176',
    :favorecido_nome => 'David Abreu Soares',
    :credito_seu_numero => '003',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '4'
})

@pagamento << {
    :favorecido_banco => '341',
    :favorecido_agencia => '6023',
    :favorecido_conta => '21303',
    :favorecido_agencia_conta_dv => '3',
    :credito_valor_pagamento => '2500',
    :numero_inscricao => '05795830747',
    :favorecido_nome => 'Ana Carolina Vidal Correa',
    :credito_seu_numero => '004',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '01'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '5'
})

@pagamento << {
    :favorecido_banco => '756',
    :favorecido_agencia => '3260',
    :favorecido_conta => '3908',
    :favorecido_agencia_conta_dv => '0',
    :credito_valor_pagamento => '2500',
    :numero_inscricao => '14194943767',
    :favorecido_nome => 'Bruno Santos Mendonça',
    :credito_seu_numero => '005',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '6'
})

@pagamento << {
   :favorecido_banco => '021',
    :favorecido_agencia => '0205',
    :favorecido_conta => '460493',
    :favorecido_agencia_conta_dv => '0',
    :credito_valor_pagamento => '5000',
    :numero_inscricao => '00527731757',
    :favorecido_nome => 'Julio Cesar da Silva',
    :credito_seu_numero => '006',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '7'
})

@pagamento << {
   :favorecido_banco => '021',
    :favorecido_agencia => '0187',
    :favorecido_conta => '2608992',
    :favorecido_agencia_conta_dv => '0',
    :credito_valor_pagamento => '8500',
    :numero_inscricao => '08227574785',
    :favorecido_nome => 'Elma Rodrigues Perciliano Marchioro',
    :credito_seu_numero => '007',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '8'
})

@pagamento << {
    :favorecido_banco => '104',
    :favorecido_agencia => '0592',
    :favorecido_conta => '00033311',
    :favorecido_agencia_conta_dv => '7',
    :credito_valor_pagamento => '8500',
    :numero_inscricao => '07675543700',
    :favorecido_nome => 'Fernanda Leal da Silva Schiavo',
    :credito_seu_numero => '008',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '9'
})

@pagamento << {
    :favorecido_banco => '756',
    :favorecido_agencia => '3001',
    :favorecido_conta => '11507',
    :favorecido_agencia_conta_dv => '0',
    :credito_valor_pagamento => '93500',
    :numero_inscricao => '09061758793',
    :favorecido_nome => 'Renata Bassul Torres',
    :credito_seu_numero => '009',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '10'
})

@pagamento << {
    :favorecido_banco => '104',
    :favorecido_agencia => '0399',
    :favorecido_conta => '4245',
    :favorecido_agencia_conta_dv => '0',
    :credito_valor_pagamento => '76500',
    :numero_inscricao => '21336553000190',
    :favorecido_nome => 'Francielize Marchi Valese',
    :credito_seu_numero => '010',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

@pagamento.add_lote({
    :controle_lote => '11'
})

@pagamento << {
    :favorecido_banco => '001',
    :favorecido_agencia => '4232',
    :favorecido_conta => '31915',
    :favorecido_agencia_conta_dv => '5',
    :credito_valor_pagamento => '8500',
    :numero_inscricao => '26093411000162',
    :favorecido_nome => 'ALEXANDRE KLEVERSON DE OLIVEIRA',
    :credito_seu_numero => '011',
    :credito_data_pagamento => Time.now.strftime("%d%m%Y"),
}

@pagamento.arquivo.lotes.last.header[:servico_tipo] = '20'
@pagamento.arquivo.lotes.last.header[:servico_forma] = '41'

@pagamento.arquivo.lotes.last.header[:empresa_agencia_codigo] = '8933'
@pagamento.arquivo.lotes.last.header[:empresa_conta_numero] = '16544'
@pagamento.arquivo.lotes.last.header[:empresa_agencia_conta_dv] = '4'
@pagamento.arquivo.lotes.last.header[:empresa_tipo] = "2"

@pagamento.arquivo.lotes.last.header[:controle_banco] = '341'
@pagamento.arquivo.lotes.last.header[:empresa_numero] = "19468242000132"
@pagamento.arquivo.lotes.last.header[:empresa_nome] = "ZOOP TECNOLOGIA LTDA"
@pagamento.arquivo.lotes.last.trailer[:controle_banco] = '341'

File.open(File.join("./tmp", Time.now.strftime("%d%m%y").to_s+"-"+Random.new.rand(10..100).to_s+".REM"), 'w'){ |file| file.write(@pagamento.string)}
puts @pagamento.string
