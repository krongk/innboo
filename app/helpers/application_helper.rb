# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

def format_bool(b)
   if b
     '是'
   else
     '否'
   end
end
def format_time(time)
  time.strftime("%Y-%m-%d %H:%M")
end
end
