require_relative 'controllers/menu_controller'
require '/home/john/bloc/bloc_record/lib/bloc_record'

# Choose preferred database platform:
BlocRecord.connect_to("db/address_bloc.sqlite", :sqlite3)
# BlocRecord.connect_to("db/address_bloc.db", :pg)

menu = MenuController.new
system "clear"
puts "Welcome to AddressBloc!"
menu.main_menu
