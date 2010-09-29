Content Skipper
===============

In Controller:
--------------

Class methods:

    skip_content :header
    skip_content :footer, :only => 'index'
    skip_content :navigation, :except => 'show'
    skip_content [:comments, :faqs], :only => ['home', 'about']

Instance methods:

    skip_content :header
    dont_skip_content :header

  
In Views:
---------

    <%= render(:partial => 'footer') unless skip_content?(:footer) -%>

