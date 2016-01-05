Graphics.init() -- Init GPU

apppath = System.currentDirectory();
gfxpath = System.currentDirectory() .. "/gfx/";

-- graphics initialising
tileset = Graphics.loadImage(gfxpath .. "unitile12.png");
test 	= Graphics.loadImage(gfxpath .. "test.png");
banana  = Graphics.loadImage(gfxpath .. "sprite9.png");
placeholder = Graphics.loadImage(gfxpath .. "placeholder.png");

wixpr21 = Graphics.loadImage(gfxpath .. "wpr2112.png");
wixpr22 = Graphics.loadImage(gfxpath .. "wpr2212.png");

wixpl21 = Graphics.loadImage(gfxpath .. "wpl2112.png");
wixpl22 = Graphics.loadImage(gfxpath .. "wpl2212.png");

stageone = {{ "G", "A", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "G", "G", "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "},{ "G", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "}, { "G", "G", " ", "G", "G", "G", " ", "G", "G", "G", "G", " ", "G", "G", " ", "G", "G", "G", "G", "G", "G", "G", " ", "G", "G", "G", " ", "G", "G", "G", "G", "G", "G", "G", "G", " ", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G"}};

playerinfo = {};
playerinfo.x = 0;
playerinfo.y = 172;
playerinfo.orient = 6;
playerinfo.anim = 0;
playerinfo.state = false;
playerinfo.supported = true;
playerinfo.X = playerinfo.x;

runspeed = 3;

Gravity = true;
GravityStrength = 1;

x = 0;
g = 0;

function animate()
	if (playerinfo.anim == 6) then
		playerinfo.anim	 = 0;
		playerinfo.state = not playerinfo.state;
	end
	playerinfo.anim = playerinfo.anim + 1;
end
-- Useless function because it's only used once
-- adding value to playerinfo.y makes it fall
function fall()
	if (not playerinfo.supported) then
	playerinfo.y = playerinfo.y + GravityStrength;
	end
end



while true do
	pad = Controls.read();
	Graphics.initBlend(TOP_SCREEN)
	fall();
	-- LEVEL DRAWING
	-- - g = creds to Julien (and more)
	-- draws from top to bottom
	-- 20 vertical lines
	-- x - 1 through x + 34 horizontal tiles (one more and less than able to fit on the screen to prevent NES-like missing tiles on the sides)
	for i = 1, #stageone, 1 do
		for n = x - 1, x + 34, 1 do
			-- drawing depends on content of a tile
			if stageone[i][n] == "G" then
				-- g stands for the distance a character is located from a regular tile
				-- to create smooth scrolling effect and prevent jumps
				-- since LUA doesn't have indices starting at 0, we substract 1 
				Graphics.drawPartialImage(((n - x) * 12)- g  , (i - 1) * 12, 0, 24, 12, 12, tileset);
			end
		end
	end
	

	for i = 1, #stageone, 1 do
		if stageone[20][playerinfo.X/12+1] == " " then
			playerinfo.supported = false;
		else
		playerinfo.supported = true;
		end	
	end



	if (Controls.check(pad, KEY_DRIGHT)) then
		playerinfo.orient = 6;
		animate();
		playerinfo.X = playerinfo.X + runspeed;
		-- if the player reaches the near end of the screen, don't move the player, but the level
		if (playerinfo.x >= 250) then
			-- g is the offset of a regular tile, runspeed is added to create the effect of movement
			g = g + runspeed;
			-- if the offset reaches 12 (a regular tile), reset the offset to 0 and move the tiles by 1
			if g >= 12 then
				g = 0;
				x = x + 1;
			end
		else
			-- if the player is not near the end of the level, just move the player
			playerinfo.x = playerinfo.x + runspeed;
		end
	-- the same, but inverted
	elseif (Controls.check(pad, KEY_DLEFT)) then
		playerinfo.orient = 4;
		animate();
		playerinfo.X = playerinfo.X - runspeed;
		if (playerinfo.x <= 50) then
			g = g - runspeed;
			if g <= - 12 then
				g = 0;
				x = x - 1;
			end
		else
			playerinfo.x = playerinfo.x - runspeed;
		end
	end



	-- magical test button which does great scrolling
	if (Controls.check(pad, KEY_A)) then
		Graphics.drawImage(0, 0, banana);
		--x = x + 1;
		g = g + 1;
		if g == 12 then
			g = 0;
			x = x + 1;
		end
	end

	if (playerinfo.orient == 6) then
		if (playerinfo.state) then
			Graphics.drawImage(playerinfo.x, playerinfo.y, wixpr21);
		else
			Graphics.drawImage(playerinfo.x, playerinfo.y, wixpr22);
		end
	elseif (playerinfo.orient == 4) then
		if (playerinfo.state) then
			Graphics.drawImage(playerinfo.x, playerinfo.y, wixpl21);
		else
			Graphics.drawImage(playerinfo.x, playerinfo.y, wixpl22);
		end

	end

	Graphics.termBlend()

	Screen.flip()
	Screen.waitVblankStart()

	oldpad = pad;

end