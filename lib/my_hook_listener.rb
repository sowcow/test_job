class MyHookListener < Redmine::Hook::ViewListener
  def view_issues_show_description_bottom context = {}
    # not perfect ya know...

    id = context[:issue].id
    "<p><a class='icon icon-attachment' href='#{id}/hey'>Download All</a></p>"

    #link_to 'Download All',
    #  controller: :my, action: :get_em,
    #  class: 'icon icon-attachment'
  end
end
