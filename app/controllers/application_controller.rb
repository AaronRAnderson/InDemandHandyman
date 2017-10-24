class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_copyright

    def set_copyright
      @copyright = BigMouthFrogCopyrightTool::Renderer.copyright("Big Mouth Frog Development", "All rights reserved")
    end
  end

  module BigMouthFrogCopyrightTool
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | Powered by: <a href='bigmouthfrogdev.com'>#{name}</a> | #{msg}".html_safe
      end
    end
  end
