class AppPages <SitePrism::Page

  set_url '/?auth=2'
  element :app_um , '#ShellMail_link'

  def app
    wait_until_app_um_visible
    app_um.click
    sleep(6)
  end
end