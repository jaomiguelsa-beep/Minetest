extends Control

# Menu principal estilo Minecraft

func _ready():
	print("🎮 Minetest Menu")
	setup_ui()

func setup_ui():
	# Title
	var title = Label.new()
	title.text = "MINETEST"
	title.add_theme_font_size_override("font_size", 80)
	title.anchor_left = 0.5
	title.anchor_top = 0.2
	title.offset_left = -150
	title.add_theme_color_override("font_color", Color.WHITE)
	add_child(title)
	
	# Buttons
	var button_play = create_button("Jogar", 0.4)
	button_play.pressed.connect(func(): get_tree().change_scene_to_file("res://scenes/game/Minetest.tscn"))
	
	var button_options = create_button("Opções", 0.55)
	button_options.pressed.connect(func(): print("Opções"))
	
	var button_exit = create_button("Sair", 0.7)
	button_exit.pressed.connect(func(): get_tree().quit())

func create_button(text: String, y_pos: float) -> Button:
	var button = Button.new()
	button.text = text
	button.anchor_left = 0.5
	button.anchor_top = y_pos
	button.offset_left = -100
	button.offset_top = -30
	button.custom_minimum_size = Vector2(200, 60)
	button.add_theme_font_size_override("font_size", 28)
	add_child(button)
	return button

func _process(delta):
	# Background animation
	pass
