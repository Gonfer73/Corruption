extends Node2D

var nombres_f = ["Abril", "Aitana", "Alba", "Alicia", "Alma", "Amalia", "Ana", "Andrea", "Ángela", "Ariadna", "Aurora", "Bárbara", "Beatriz", "Belén", "Berta", "Blanca", "Bruna", "Camila", "Candela", "Carla", "Carlota", "Carmen", "Carolina", "Catalina", "Celia", "Clara", "Claudia", "Cristina", "Daniela", "Diana", "Dolores", "Elena", "Elisa", "Elsa", "Emma", "Esther", "Eva", "Fabiola", "Fátima", "Fernanda", "Gabriela", "Gema", "Gloria", "Guadalupe", "Inés", "Irene", "Iris", "Isabel", "Jana", "Jimena", "Julia", "Lara", "Laura", "Leire", "Leonor", "Leticia", "Lidia", "Lola", "Lorena", "Lucía", "Luna", "Macarena", "Manuela", "Mar", "María", "Marina", "Marta", "Martina", "Mía", "Miriam", "Mónica", "Nadia", "Natalia", "Nerea", "Noelia", "Nuria", "Olivia", "Olga", "Paola", "Patricia", "Paula", "Pilar", "Raquel", "Rebecca", "Rocío", "Rosa", "Ruth", "Sabina", "Sara", "Sofía", "Sonia", "Tania", "Teresa", "Valentina", "Valeria", "Vanesa", "Verónica", "Victoria", "Yolanda", "Zoe"]
var nombres_m = ["Aarón", "Abel", "Adrián", "Agustín", "Alejandro", "Andrés", "Antonio", "Arturo", "Baltasar", "Benjamín", "Bernardo", "Borja", "Bruno", "Camilo", "Carlos", "César", "Claudio", "Cristian", "Damián", "Daniel", "Darío", "David", "Diego", "Edgar", "Eduardo", "Elías", "Emilio", "Enrique", "Esteban", "Fabián", "Federico", "Felipe", "Fernando", "Francisco", "Gabriel", "Gael", "Gerardo", "Gonzalo", "Guillermo", "Héctor", "Hernán", "Hugo", "Ian", "Iker", "Isaac", "Ismael", "Iván", "Jaime", "Javier", "Jesús", "Joaquín", "Jorge", "José", "Juan", "Kevin", "Kilian", "Leandro", "Leo", "Leonardo", "Lorenzo", "Lucas", "Luis", "Manuel", "Marcos", "Mario", "Martín", "Mateo", "Matías", "Miguel", "Nicolás", "Noé", "Oliver", "Omar", "Óscar", "Pablo", "Patricio", "Pedro", "Rafael", "Ramiro", "Ramón", "Raúl", "Ricardo", "Roberto", "Rodrigo", "Rubén", "Salvador", "Samuel", "Santiago", "Sebastián", "Sergio", "Tadeo", "Tomás", "Ulises", "Uriel", "Vicente", "Víctor", "Walter", "Xavier", "Yago", "Zacarías"]
var apellidos = ["Abad", "Aguilar", "Alonso", "Álvarez", "Arias", "Barrios", "Beltrán", "Benítez", "Blanco", "Bravo", "Burgos", "Cabrera", "Calvo", "Campos", "Cano", "Carrasco", "Castillo", "Castro", "Cortés", "Cruz", "Delgado", "Díaz", "Domínguez", "Espinosa", "Estévez", "Fernández", "Ferrer", "Flores", "Fuentes", "Gallardo", "Gallego", "García", "Giménez", "Gómez", "González", "Guerrero", "Gutiérrez", "Hernández", "Herrera", "Hidalgo", "Ibáñez", "Iglesias", "Jiménez", "Juárez", "Lara", "León", "López", "Lozano", "Luna", "Marín", "Márquez", "Martín", "Martínez", "Medina", "Méndez", "Mendoza", "Miranda", "Molina", "Montero", "Morales", "Moreno", "Muñoz", "Navarro", "Nieto", "Núñez", "Ortega", "Ortiz", "Pacheco", "Padilla", "Palacios", "Pardo", "Parra", "Pascual", "Pastor", "Pérez", "Prieto", "Quintana", "Quiroga", "Ramírez", "Ramos", "Rivera", "Robles", "Rodríguez", "Rojas", "Romero", "Rubio", "Ruiz", "Saavedra", "Sáez", "Salazar", "Sanz", "Serrano", "Silva", "Soto", "Suárez", "Torres", "Vargas", "Vázquez", "Vega", "Zúñiga"]
var masculino_0 = 0
var masculino_1 = 0
var nombre_0 = "a"
var nombre_1 = "a"
#nombres y apellidos disponibles para los personajes

func _ready():
	$Paper01.show()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	#se asegura de que todos los papeles se ocultan menos el principal "la hoja del caso"
	
	randomize()
	masculino_0 = randi_range(0, 1)
	masculino_1 =  randi_range(0, 1)
	#elige el género de las partes aleatoriamente
	
	$Paper01/label_06.text = str(randi_range(18, 60)) + " " + "Años"
	$Paper01/label_07.text = str(randi_range(18, 60)) + " " + "Años"
	#escoge aleatoriamente la edad de las parte
	
	if masculino_0 == 0:
		$Paper01/label_08.text = "Mujer"
		nombre_0 = nombres_f.pick_random() + " " + apellidos.pick_random() + " " + apellidos.pick_random()
		print(nombre_0)
		$Paper01/label_03.text = nombre_0
	#si el denunciado es decidido como mujer entonces elige un nombre aleatorio gracias a las listas provistas
	
	elif masculino_0 == 1:
		$Paper01/label_08.text = "Hombre"
		nombre_0 = nombres_m.pick_random() + " " + apellidos.pick_random() + " " + apellidos.pick_random()
		print(nombre_0)
		$Paper01/label_03.text = nombre_0
	#si el denunciado es decidido como hombre entonces elige un nombre aleatorio gracias a las listas provistas
	
	if masculino_1 == 0:
		$Paper01/label_09.text = "Mujer"
		nombre_1 = nombres_f.pick_random() + " " + apellidos.pick_random() + " " + apellidos.pick_random()
		print(nombre_1)
		$Paper01/label_05.text = nombre_1
	#si el denunciante es decidido como mujer entonces elige un nombre aleatorio gracias a las listas provistas
	
	elif masculino_1 == 1:
		$Paper01/label_09.text = "Hombre"
		nombre_1 = nombres_m.pick_random() + " " + apellidos.pick_random() + " " + apellidos.pick_random()
		print(nombre_1)
		$Paper01/label_05.text = nombre_1
	#si el denunciante es decidido como hombre entonces elige un nombre aleatorio gracias a las listas provistas

	$Paper03/label_15.text = "Si tuviera que elegir entre alguno de mis dos
	padres elegiría definitivamente a " + nombre_1 + " ," + nombre_0 + " es mucho más egoísta y nunca me
	deja salir hasta tarde"     
	#testimonio I, personalizado con el nombre de las partes
	
	$Paper04/label_16.text = "No quiero elegir entre mis padres, pero a " + nombre_1 + " a veces
	se le va la cabeza y nos pega, y creo que eso no me gusta"            
	#testimonio II, personalizado con el nombre de las partes



func _on_label_10_bt_pressed() -> void:
	#lleva al papel de testimonios
	$Paper01.hide()
	$Paper02.show()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_label_11_bt_pressed() -> void:
	#lleva al papel de pruebas
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.show()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_label_13_bt_pressed() -> void:
	#lleva al papel de testimonio I
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.show()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_label_14_bt_pressed() -> void:
	#lleva al papel de testimonio II
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.show()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_back_bt_01_pressed() -> void:
	#devuelve a la vista del juzgado desde la ficha de caso
	get_tree().change_scene_to_file("res://main/main.tscn")

func _on_back_bt_02_pressed() -> void:
	#devuelve a la ficha de caso
	$Paper01.show()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_back_bt_03_pressed() -> void:
	#devuelve al papel de testimonios
	$Paper01.hide()
	$Paper02.show()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_back_bt_04_pressed() -> void:
	#devuelve al papel de testimonios
	$Paper01.hide()
	$Paper02.show()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_back_bt_05_pressed() -> void:
	#devuelve a la ficha de caso
	$Paper01.show()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_back_bt_06_pressed() -> void:
	#devuelve al papel de pruebas
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.show()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
	
func _on_back_bt_07_pressed() -> void:
	#devuelve al papel de pruebas
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.show()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()

func _on_label_18_bt_pressed() -> void:
	#lleva a la nómina del denunciado
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.show()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()

func _on_label_19_bt_pressed() -> void:
	#lleva a las propiedades del denunciado
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.show()
	$Paper08.hide()
	$Paper09.hide()

func _on_back_bt_08_pressed() -> void:
	#devuelve al papel de pruebas
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.show()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()

func _on_label_20_bt_pressed() -> void:
	#lleva al papel con la nómina del denunciante
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.show()
	$Paper09.hide()


func _on_label_21_bt_pressed() -> void:
	#lleva al papel con las propiedades del denunciante
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.hide()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.show()


func _on_back_bt_09_pressed() -> void:
	#devuelve al papel de pruebas
	$Paper01.hide()
	$Paper02.hide()
	$Paper03.hide()
	$Paper04.hide()
	$Paper05.show()
	$Paper06.hide()
	$Paper07.hide()
	$Paper08.hide()
	$Paper09.hide()
