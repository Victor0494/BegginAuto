class HomePage < SitePrism::Page


  set_url 'https://login.microsoftonline.com/'

  element :inpt_email , '#i0116'
  element :inpt_senha , '#i0118'
  element :btn_next1 , '#idSIButton9'
  
 

  def login(email,pwd)
    inpt_email.set email
    btn_next1.click
    wait_until_inpt_senha_visible
    inpt_senha.set pwd
    btn_next1.click
    btn_next1.click
  end
  
end
