extends CharacterBody2D

# Variables
var speed = 300

func _physics_process(delta): #built-in Godot function that gets called every physics frame, delta parameter represents the time elapsed since the last physics frame
	var input_x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var input_y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	var input_vector = Vector2(input_x, input_y).normalized()
	self.velocity = input_vector * speed

	move_and_slide()
