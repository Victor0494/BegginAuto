class UpfMenu < SitePrism::Page
    set_url '/apps/inicio.php'


    element :user, 'li.user user-menu hidden-xs'
    element :a,'.padding-header-menu'
    element :btn_sair, '#btnMdFechar'
    element :btn_aluno, '.width-100-percent margin-bottom-20'
    element :div_container, '.list-style-none'
    element :academico, '#a_menu_cod_8'
    element :aee_aluno, '#a_menu_cod_579'

  def menu

    wait_until_academico_visible
    academico.click
    wait_until_aee_aluno_visible
    aee_aluno.click
    sleep(10)
  
  end




end