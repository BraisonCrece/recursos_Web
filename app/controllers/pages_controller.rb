class PagesController < ApplicationController
  def cheatsheets; end

  def html_css; end

  def index; end

  def ror; end

  def javascript; end

  def download_md
    name = params[:name]
    send_file "#{Rails.root}/public/docs/#{name}", type: 'application/md', x_sendfile: true
  end

end
