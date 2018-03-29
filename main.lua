-- This program animates 3 different
-- objects in different ways
-- Johnathan M ICS20
-- Animating Images


--loads background music file
local backgroundMusic = audio.loadSound ("Sounds/Party.mp3")
-- create channel for background music
local backgroundMusicChannel
--sets params for background music
local optionsbackgroundMusic =
{
	channel = 2
}
audio.setVolume ( 0.35, "optionsbackgroundMusic" )
	backgroundMusicChannel = audio.play (backgroundMusic)

-- hide the status bar
display.setStatusBar (display.HiddenStatusBar)

local backgroundimage = display.newImageRect("Images/background.jpg", 1960,1500)
	
	--centers the background image
	backgroundimage.x = display.contentWidth/2
	backgroundimage.y = display.contentWidth*76/100

local blueCar = display.newImageRect("Images/bluecar.png", 480, 200)
	blueCar.x = 500
	blueCar.y = 1100

local redCar = display.newImageRect("Images/redcar.png", 480, 200)
	redCar.x = 500
	redCar.y = 1250

local moveSpeed = 20
local moveSpeed2 = 40
redCar.id =  "redCar"




local function moveRed(event)
	
	if ( event.phase == "began" ) then

	redCar.x = redCar.x + moveSpeed2

		if ( redCar.x > 900 ) then

			moveSpeed2 = -40

		elseif ( redCar.x < 0 ) then

			moveSpeed2 = 40


		end

	end

end



--local function created for Object1
local function moveBlue()

	blueCar.x = blueCar.x + moveSpeed
	
	if ( blueCar.x > 900 ) then

		moveSpeed = -20

	elseif ( blueCar.x < 0 ) then

			moveSpeed = 40

	end

end


timer.performWithDelay(500, moveBlue, 0)
redCar:addEventListener("touch", moveRed)
