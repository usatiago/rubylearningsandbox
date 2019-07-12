require "curses"

Curses.init_screen
my_window = Curses::Window.new(10,10,10,10)
my_window.box("|","-")
my_window.refresh
my_window.close