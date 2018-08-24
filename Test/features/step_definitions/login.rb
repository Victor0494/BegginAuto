Dado("que eu tenho um usuario") do |table|
  @email = table.rows_hash['email']
  @pwd = table.rows_hash['senha']
  home.load
  
end


Quando("eu faco o login") do
  #carregados junto com o homolog
  #@email = CONFIG['email']
  #@pwd = CONFIG['senha']

  home.login(@email,@pwd)
end
