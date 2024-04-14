extends Control
@onready var window = $PopUp
var title = ""


var elementos = {
	"H":{
		"nombre": "Hidrogeno",
		"Z":"Z: 1",
		"img":"res://tabla-periodica.png",
		"data":"Datos random jejejej",
		"audio":"res://Grabación.mp3"
	},
	"He":{
		"nombre": "Helio",
		"Z":"Z: 2",
		"img":"res://helio.png",
		"data":"Datos random2 jejejej",
		"audio":"res://Grabación.mp3"
	}
}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	swap_btns("Hidrogeno","H")
	
func _on_window_close_requested():
	window.hide()
	$PopUp/BoxContainer/Label.text = ""


func _on_button_2_pressed():
	swap_btns("Helio","He")

func swap_btns(title,element):
	window.show()
	$PopUp/Label.text = title
	$PopUp/BoxContainer/HBoxContainer/Data.text = str(elementos[element]["data"])
	$PopUp/BoxContainer/HBoxContainer/Label.text = str(elementos[element]["Z"])
	$PopUp/BoxContainer/Sprite2D.texture = load(elementos[element]["img"])
	$PopUp/AudioStreamPlayer2D.stream = load(elementos[element]["audio"])
	$PopUp/AnimationPlayer.play("test")
