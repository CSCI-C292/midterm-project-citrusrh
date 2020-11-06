extends ColorRect


func _physics_process(delta):
	if GameState.elementsDiscovered.has("Steam"):
		$SteamRecipe.visible = true
	if GameState.elementsDiscovered.has("Storm"):
		$StormRecipe.visible = true
	if GameState.elementsDiscovered.has("Plant"):
		$PlantRecipe.visible = true
	if GameState.elementsDiscovered.has("Sand"):
		$SandRecipe.visible = true
	if GameState.elementsDiscovered.has("Metal"):
		$MetalRecipe.visible = true
	if GameState.elementsDiscovered.has("Glass"):
		$GlassRecipe.visible = true
	if GameState.elementsDiscovered.has("Coal"):
		$CoalRecipe.visible = true
	if GameState.elementsDiscovered.has("Bottle"):
		$BottleRecipe.visible = true
	if GameState.elementsDiscovered.has("Diamond"):
		$DiamondRecipe.visible = true
	if GameState.elementsDiscovered.has("BottleWater"):
		$BottleWaterRecipe.visible = true
	if GameState.elementsDiscovered.has("BottleStorm"):
		$BottleStormRecipe.visible = true
	
