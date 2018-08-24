  class UPFPages < SitePrism::Page
    set_url 'https://secure.upf.br/apps/login.php'

    element :inpt_user, '#f_usuario'
    element :inpt_senha, '#f_senha'
    element :btn_next1, 'div.right'
    element :btn_sair, '#btnMdFechar'
    

 
    def login(email,pwd)
      inpt_user.set email
      wait_until_inpt_user_visible
      inpt_senha.set pwd
      wait_until_btn_next1_visible
      btn_next1.click
      wait_until_btn_sair_visible
      btn_sair.click
    end
end