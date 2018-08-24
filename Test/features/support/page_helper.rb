Dir[File.join(File.dirname(__FILE__),
              '../pages/*_pages.rb')].each { |file| require file}


module Pages
    def home
      @home ||= HomePage.new
    end

    def app_pages
      @app_pages ||= AppPages.new
    end

    def upf_pages
      @upf_pages ||= UPFPages.new
    end

    def upf_menu
      @upf_menu ||= UpfMenu.new
    end
end