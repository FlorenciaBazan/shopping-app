require "./list.rb"
require "./item.rb"


class ListApp
    attr_writer :ListApp

    def initialize
        @list = List.new
    end

    def run
        puts "Bienvenido a nuestra Lista de Compras"
        loop do 
            puts "a - Agregar un articulo"
            puts "r - Remover un articulo"
            puts "v - Mostrar todos los articulos"
            puts "m - Marcar un articulo"
            puts "b - Borrar todos los articulos"
            puts "s - Salir de la aplicacion"
            input = gets.chomp

            case input
            when 'a' 
                puts "Que articulo desea añadir?"
                item = gets.chomp
                @list.add_item(item)
                40.times { print "*" }
                puts "\n#{item} ha sido agregado a tu lista\n"
                40.times { print "*" }
            when 'r'
                puts "# de articulo que deseas remover?"
                index = gets.chomp
                item = @list.remove_item(index.to_i)
                40.times { print "*" }
                puts "\n#{item.text} ha sido removido"
                40.times { print "*" }
            
            when 'm'
                puts "# que articulo desea marcar"
                index = gets.chomp
                item = @list.check_item(index.to_i)
                40.times { print "*" }
                puts "\n#{item.text} ha sido agregada"
                40.times { print "*" }
            when 'v'
                puts "Mostrando articulos..."
                @list.show_all
                                   
            when 'b'
                puts "Desea remover todos los articulos? s/n"
                input = gets.chomp
                if input == 's'
                @list.remove_all
                else
                    puts "Operación Cancelada"
                end
            when 's'
                break
            else
            puts "Operación no valida"
            end
        end
        puts "Gracias por utilizar nuestra aplicacion"
    end
end

list_app = ListApp.new
list_app.run