extends Timer

signal start_game

@onready var message_label = $"../../MessageLabel"
@onready var message_timer = $"."
@onready var start_button = $"../StartButton"

func show_message(text):
	message_label.text = text
	message_label.show()
	message_timer.start()


func show_game_over():
	show_message("Game Over")
	await message_timer.timeout
	
	message_label.text = "Dodge the Bugs"
	message_label.show()
	
	await get_tree().create_timer(1.0).timeout
	start_button.show()
	
	func update_score(score):
		score_label.text = str(score)
