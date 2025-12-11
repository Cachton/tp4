extends StaticBody2D

func homme_magicien_places():
	if HUD.homme_pose and HUD.magicien_pose == true:
		queue_free()
