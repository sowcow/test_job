require 'zip' #/zip'
Zip.unicode_names = true

class MiController < ApplicationController
  unloadable


  def getz
    id = params[:issue_id] #...
    attas = Attachment.where container_id: id
    send_data archive(attas), filename: 'bulk.zip'
  end

  private # todo: put into models or role...
  def archive stuff
    io = Zip::OutputStream::write_buffer do |zip|
      stuff.each { |x|
        zip.put_next_entry x.filename
        zip.write File.read x.diskfile
        x.increment_download
      }
    end
    io.rewind
    io.sysread
  end
end
