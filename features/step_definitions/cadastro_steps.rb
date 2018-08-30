Dado("que eu esteja na tela do aplicativo km de vantagens") do
  @cadastro = Cadastro.new
  @cadastro.iniciar_cadastro
end

Quando("preencho os campos correpondentes na tela de cadastro") do
  @cadastro.preencher_cadastro
  @cadastro.preencher_dados_adicionais
  @cadastro.preencher_cadastro_de_veiculo
end

Então("valido o cadastro com mensagem {string} sucesso") do |msg_cadastro|
  @cadastro.preencher_acesso
  expect(@mensagem).to eq(msg_cadastro)
end
