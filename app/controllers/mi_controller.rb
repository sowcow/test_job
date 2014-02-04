class MiController < ApplicationController
  unloadable
  layout false


  def getz
    #raise '123'
    #@issue = Issue.find params[:issue_id]
    render text: 'olas'
  end
end
