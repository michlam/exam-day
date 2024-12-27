extends Sprite2D

@export var ap: AnimationPlayer


##############
## TEXTURES ##
##############
const texture_dict = {
	"report 0" = preload("res://assets/Images/Objects/Report_0.png"),
	"report 1" = preload("res://assets/Images/Objects/Report_1.png"),
	"report 2" = preload("res://assets/Images/Objects/Report_2.png"),
	"report 3" = preload("res://assets/Images/Objects/Report_3.png"),
}


func _ready():
	visible = false


func initialize_end_scene():
	var report_card = choose_report_card()
	set_texture(report_card)
	ap.play("show_report_card")


func choose_report_card():
	var exam_taken = Dialogic.VAR.FLAGS.get("exam")
	var grade
	
	match exam_taken:
		"a":
			grade = mark_exam_a()
		"b":
			grade = mark_exam_b()
		"c":
			grade = mark_exam_c()
	
	match grade:
		0:
			return texture_dict["report 0"]
		1:
			return texture_dict["report 1"]
		2:
			return texture_dict["report 2"]
		3:
			return texture_dict["report 3"]


func mark_exam_a():
	var return_grade = 0
	if (Dialogic.VAR.FLAGS.EXAM_A.q1 == Dialogic.VAR.FLAGS.EXAM_A.a1):
		return_grade += 1
	
	if (Dialogic.VAR.FLAGS.EXAM_A.q2 == Dialogic.VAR.FLAGS.EXAM_A.a2):
		return_grade += 1
	
	if (Dialogic.VAR.FLAGS.EXAM_A.q3 == Dialogic.VAR.FLAGS.EXAM_A.a3):
		return_grade += 1
	
	return return_grade


func mark_exam_b():
	var return_grade = 0
	if (Dialogic.VAR.FLAGS.EXAM_B.q1 == Dialogic.VAR.FLAGS.EXAM_B.a1):
		return_grade += 1
	
	if (Dialogic.VAR.FLAGS.EXAM_B.q2 == Dialogic.VAR.FLAGS.EXAM_B.a2):
		return_grade += 1
	
	if (Dialogic.VAR.FLAGS.EXAM_B.q3 == Dialogic.VAR.FLAGS.EXAM_B.a3):
		return_grade += 1
		
	return return_grade
	

func mark_exam_c():
	var return_grade = 0
	if (Dialogic.VAR.FLAGS.EXAM_C.q1 == Dialogic.VAR.FLAGS.EXAM_C.a1):
		return_grade += 1
	
	if (Dialogic.VAR.FLAGS.EXAM_C.q2 == Dialogic.VAR.FLAGS.EXAM_C.a2):
		return_grade += 1
	
	if (Dialogic.VAR.FLAGS.EXAM_C.q3 == Dialogic.VAR.FLAGS.EXAM_C.a3):
		return_grade += 1

	return return_grade
