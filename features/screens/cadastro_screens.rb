class Cadastro <Appium::Driver

# ================================= SCREEN ======================================
  def initialize
    @clicar_btn_pular = 'btn_skip'
    @clicar_btn_cadastre = 'button_signup'
    @preencher_cpf = 'edit_cpf'
    @preencher_data_de_nascimento = 'edit_birth'
    @preencher_primeiro_nome = 'edit_first_name'
    @preencher_sobrenome = 'edit_last_name'
    @seleciona_sexo = 'spinner_gender'
    @seleciona_masculino = 'text1'
    @preencher_email = 'edit_email'
    @preencher_repita_email = 'edit_email_confirmation'
    @preencher_senha = 'edit_password'
    @preencher_repita_senha = 'edit_password_confirmation'
    @preencher_telefone = 'edit_phone'
    @seleciona_estado = 'spinner_state'
    @seleciona_cidade = 'spinner_city'
    @seleciona_bairro = 'spinner_neighborhood'
    @seleciona_posto_favorito = 'spinner_favorite_station'
    @clicar_regulamento_de_fidelidade = 'check_terms'
    @clicar_aceite_termos = 'check_privacy_terms'
    @clicar_btn_finalizar_cadastro = 'button_complete_signup'
    @preencher_cep = 'edit_postal_code'
    @preencher_endereco = 'edit_address'
    @preencher_numero = 'edit_number'
    @preencher_complemento = 'edit_line_2'
    @preencher_bairro = 'edit_neighborhood'
    @preencher_estado = 'edit_state'
    @preencher_cidade = 'edit_city'
    @clicar_btn_cadastro_adicionais = 'button_finish'
    @clicar_btn_cadastrar_veiculo = 'button_1'
    @preencher_placa = 'edit_vehicle_plate'
    @clicar_tipo_veiculo = 'spinner_vehicle_type'
    @clicar_marca = 'spinner_vehicle_brand'
    @clicar_ano_de_fabricacao = 'spinner_vehicle_manufacture_year'
    @clicar_ano_do_modelo = 'spinner_vehicle_model_year'
    @clicar_motor = 'spinner_vehicle_engine'
    @clicar_combustivel = 'spinner_vehicle_fuel'
    @preencher_numero_renavam = 'edit_renavam'
    @preencher_km_atual = 'edit_current_km'
    @preencher_km_rodado = 'edit_km_average'
    @clicar_possui_seguro = 'spinner_has_insurance'
    @clicar_btn_acessar = 'button_signin'
  end

# ================================ METODOS =====================================

#===========================INICIO DO APP ======================================
  def iniciar_cadastro
    self.campo_pular
    self.campo_btn_cadastra
  end

  def campo_pular
    find_element(:id, @clicar_btn_pular).click
  end

  def campo_btn_cadastra
    find_element(:id, @clicar_btn_cadastre).click
  end

# ===========================CADASTRO COMPLETO==================================
  def preencher_cadastro
      self.campo_cpf
      self.campo_data_nascimento
      self.campo_primeiro_nome
      self.scroll_para_baixo
      self.campo_sobrenome
      self.campo_sexo
      self.campo_email
      self.scroll_para_baixo
      self.campo_repita_email
      self.campo_senha
      self.campo_repita_senha
      self.scroll_para_baixo
      self.campo_telefone
      self.scroll_estado
      self.campo_estado
      self.campo_cidade
      self.campo_bairro
      self.scroll_estado
      self.btn_finalizar_cadastro
  end

  def scroll_para_cima
    scroll_to('Sobrenome *').click
  end

  def scroll_para_baixo
    2.times{ Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.6, end_y: 0.3, duration: 900).perform}
  end

  def campo_cpf
    find_element(:id, @preencher_cpf).clear
    find_element(:id, @preencher_cpf).send_keys('77943073096')
    hide_keyboard
  end

  def campo_data_nascimento
    find_element(:id, @preencher_data_de_nascimento).clear
    find_element(:id, @preencher_data_de_nascimento).send_keys('23031988')
    hide_keyboard
  end

  def campo_primeiro_nome
    find_element(:id, @preencher_primeiro_nome).clear
    find_element(:id, @preencher_primeiro_nome).send_keys('Aline')
    hide_keyboard
  end

  def campo_sobrenome
    find_element(:id, @preencher_sobrenome).clear
    find_element(:id, @preencher_sobrenome).send_keys('Dias')
    hide_keyboard
  end

  def campo_sexo
    find_element(:id, @seleciona_sexo).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_email
    find_element(:id, @preencher_email).clear
    find_element(:id, @preencher_email).send_keys('diasaline@gmail.com')
    hide_keyboard
  end

  def campo_repita_email
    find_element(:id, @preencher_repita_email).clear
    find_element(:id, @preencher_repita_email).send_keys('diasaline@gmail.com')
    hide_keyboard
  end

  def campo_senha
    find_element(:id, @preencher_senha).clear
    find_element(:id, @preencher_senha).send_keys ENV['SENHA']
    hide_keyboard
  end

  def campo_repita_senha
    find_element(:id, @preencher_repita_senha).clear
    find_element(:id, @preencher_repita_senha).send_keys ENV['SENHA']
    hide_keyboard
  end

  def campo_telefone
    find_element(:id, @preencher_telefone).clear
    find_element(:id, @preencher_telefone).send_keys('11994356870')
    hide_keyboard
  end

  def scroll_estado
    1.times{ Appium::TouchAction.new.swipe(start_x: 0.3, start_y: 0.6, end_x: 0.4, end_y: 0.2, duration: 400).perform}
  end

  def campo_estado
    find_element(:id, @seleciona_estado).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_cidade
    find_element(:id, @seleciona_cidade).click
    ele_index('android.widget.TextView', rand(1..3)).click
  end

  def campo_bairro
    find_element(:id, @seleciona_bairro).click
    ele_index('android.widget.TextView', rand(1..3)).click
  end

  def campo_posto_favorito
    find_element(:id, @seleciona_posto_favorito).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_regulamento_de_fidelidade
    find_element(:id, @clicar_regulamento_de_fidelidade).click
  end

  def campo_aceite_termos
    find_element(:id, @clicar_aceite_termos).click
  end

  def btn_finalizar_cadastro
    find_element(:id, @clicar_btn_finalizar_cadastro).click
  end

#=====================================DADOS ADICIONAIS==========================
  def preencher_dados_adicionais
    self.campo_cep
    self.campo_numero
    self.campo_complemento
  end

  def campo_cep
    find_element(:id, @preencher_cep).clear
    find_element(:id, @preencher_cep).send_keys('06462140')
    hide_keyboard
  end

  def campo_numero
    find_element(:id, @preencher_numero).clear
    find_element(:id, @preencher_numero).send_keys('59')
    hide_keyboard
  end

  def campo_complemento
    find_element(:id, @preencher_complemento).clear
    find_element(:id, @preencher_complemento).send_keys('casa2')
    hide_keyboard
  end

#======================================CADASTRO DE VEICULO =====================
  def preencher_cadastro_de_veiculo
    self.campo_placa
    self.campo_tipo_veiculo
    self.campo_marca
    self.campo_modelo
    self.campo_fabricacao
    self.campo_ano_do_modelo
    self.campo_motor
    self.campo_combustivel
    self.campo_numero_renavam
    self.campo_km_atual
    self.campo_km_rodado
    self.campo_seguro
  end

  def campo_placa
    find_element(:id, @preencher_placa).send_keys('JBM6977')
    hide_keyboard
  end

  def campo_tipo_veiculo
    find_element(:id, @preencher_placa).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_marca
    find_element(:id, @clicar_marca).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_modelo
    find_element(:id, @clicar_ano_do_modelo).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_fabricacao
    find_element(:id, @clicar_ano_de_fabricacao).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_ano_do_modelo
    find_element(:id, @clicar_ano_do_modelo).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_motor
    find_element(:id, @clicar_motor).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_combustivel
    find_element(:id, @clicar_combustivel).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

  def campo_numero_renavam
    find_element(:id, @preencher_numero_renavam).send_keys('05964440963')
    hide_keyboard
  end

  def campo_km_atual
    find_element(:id, @preencher_km_atual).send_keys('120.000')
    hide_keyboard
  end

  def campo_km_rodado
    find_element(:id, @preencher_km_rodado).send_keys('120.000')
    hide_keyboard
  end

  def campo_seguro
    find_element(:id, @clicar_combustivel).click
    ele_index('android.widget.TextView', rand(1..2)).click
  end

#===========================ACESSA APP==========================================
  def preencher_acesso
    self.campo_cpf
    self.campo_senha
    self.campo_btn_acessar
  end

  def campo_btn_acessar
    find_element(:id, @clicar_btn_acessar).click
  end

  def validar_cadastro
    @mensagem = query("* :text, 'Bem-vindo, Aline'",:text).first
  end

end
