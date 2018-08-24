require 'fileutils'
#metodo para tirar screenshots


module Helper
  def take_screenshots(file_name, result)
    timer_path = Time.now.strftime('%F').to_s
    file_path = "results/screenshots/test_#{result}/run_#{timer_path}"
    screenshot = "#{file_path}/#{file_name}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'imagem/png', 'Click here')
  end
end
