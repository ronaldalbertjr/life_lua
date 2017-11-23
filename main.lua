love.graphics.setBackgroundColor(128,128,128,255)
love.mouse.setGrabbed( true )
dildo = {}
dildo.image = love.graphics.newImage("img/dildo.png")

function love.load()
	print("don't play this game, it's stupid")
	tries = 0
	dildo.width = dildo.image:getWidth()
	dildo.height = dildo.image:getHeight()
	dildo.x = love.graphics.getWidth()/2 - dildo.width/2
	dildo.y = love.graphics.getHeight()/2 - dildo.height/2
end

function dildo:checkTry()
	mouseX = love.mouse.getX()
	mouseY = love.mouse.getY()
	if love.mouse.isDown(1) and mouseX >= dildo.x and mouseX <= dildo.x + dildo.width and mouseY >= dildo.y and mouseY <= dildo.y + dildo.height then
		tries = tries + 1
	end
end

function love.update(dt)
	dildo:checkTry()
end

function love.draw()
	love.graphics.draw(dildo.image, dildo.x, dildo.y)
	if tries > 75 then 
		love.graphics.print("pussies taste so good", dildo.x - 75, dildo.y + 50)
	elseif tries > 50 then
		dildo.image = love.graphics.newImage("img/pussy.png")
		love.graphics.print("you are trying it quite hard, you should probably go back to fucking girls", dildo.x - 200, dildo.y + 50)
		love.graphics.print("you may regret this later in your life", dildo.x - 200, dildo.y + 100)  
		love.graphics.print("SORRY", dildo.x - 200, dildo.y + 150)  
	elseif tries > 0 then
		love.graphics.print("You gave it a try, Congratulations!!", dildo.x - 75, dildo.y + 50)
	else
		love.graphics.print("Give it a try!!", dildo.x - 20, dildo.y + 50) 
	end
end