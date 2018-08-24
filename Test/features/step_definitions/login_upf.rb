Dado("que um aluno") do |table|
  @email = table.rows_hash['email']
  @pwd = table.rows_hash['senha']
  upf_pages.load
end

Quando("fazer login") do
  upf_pages.login(@email,@pwd)

end

Então("validar login") do
  upf_menu.menu
end