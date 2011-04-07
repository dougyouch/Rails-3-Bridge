Rails 3 Bridge
==============

Adds Rails 3 style methods to ActiveRecord::Base.

Example
-------

  log_entries
  -----------
  id
  session_id
  page
  created_at
  
  LogEntry.select("session_id, COUNT(*) as hits").group("session_id").having("hits > 5").where("created_at > ?", 1.day.ago).all


scope
=====

It's a protected method in ActiveRecord::Base. So, you still have to use named_scope in Rails 2. You can use Rails 3 style scopes though.

  class LogEntry < ActiveRecord::Base
    named_scope :home_page, where(:page => '/')
  end

  LogEntry.home_page.all

Right now you can not due, named_scope :newest_home_page_views, where(:page => '/').order('created_at DESC').

Contributing to rails3_bridge
=============================
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
=========

Copyright (c) 2011 Doug Youch. See LICENSE.txt for
further details.

