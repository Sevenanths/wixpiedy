-- Init GPU
Graphics.init();

apppath = System.currentDirectory();
gfxpath = System.currentDirectory() .. "/gfx/";

-- Graphics initialising
tileset = Graphics.loadImage(gfxpath .. "unitile12.png");
test 	= Graphics.loadImage(gfxpath .. "test.png");
banana  = Graphics.loadImage(gfxpath .. "sprite9.png");
placeholder = Graphics.loadImage(gfxpath .. "placeholder.png");
bg = Graphics.loadImage(gfxpath .. "bg.png");

wixpr21 = Graphics.loadImage(gfxpath .. "wpr2112.png");
wixpr22 = Graphics.loadImage(gfxpath .. "wpr2212.png");

wixpl21 = Graphics.loadImage(gfxpath .. "wpl2112.png");
wixpl22 = Graphics.loadImage(gfxpath .. "wpl2212.png");

wprfall = Graphics.loadImage(gfxpath .. "wprfall2.png");

-- Stage
stage = {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},{1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0},{1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0},{1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,0,1,0,0,0,0,0,0,0,1,0,0,0,1,1,1,1,1,1}};

-- On the fly
tilewidth = #stage[1];

-- Constants
tildim = 12;
white = Color.new(255,255,255)

-- Player info
playerinfo = {};
playerinfo.position = {};
playerinfo.position.absolute = { x = 12, y = 12 };
playerinfo.position.relative = { x = 168, y = 88 };

playerinfo.constants = {};
playerinfo.constants.runspeed = 3;
playerinfo.constants.gravity = 1;
playerinfo.constants.jumpspeed = 3;

playerinfo.vspeed = 0;
playerinfo.jumping = false;

playerinfo.orient = 6;

playerinfo.anim = 0;
playerinfo.runstate = false;

playerinfo.gravity = true;
playerinfo.supported = true;

function round(x)
  if x%2 ~= 0.5 then
    return math.floor(x+0.5)
  end
  return x-0.5
end

function animate()
	if (playerinfo.anim == 6) then
		playerinfo.anim	 = 0;
		playerinfo.state = not playerinfo.state;
	end
	playerinfo.anim = playerinfo.anim + 1;
end

function move()
	currentTileRaw 	= { x = playerinfo.position.absolute.x / tildim, y = playerinfo.position.absolute.y / tildim };
	currentTile 	= {};
	currentTile["left"] = createHitbox(currentTileRaw, "ver", 1, 4);
	currentTile["right"] = createHitbox(currentTileRaw, "ver", 2, 4);
	currentTile["top"] = createHitbox(currentTileRaw, "hor", 1, 2);
	currentTile["down"] = createHitbox(currentTileRaw, "hor", 3, 2);

	playerinfo.supported = not checkmove("down", 1, currentTile);

	if (Controls.check(pad, KEY_DRIGHT)) then
		playerinfo.orient = 6;
		if (canmove(playerinfo.constants.runspeed, currentTile)) then
			movereal("hor", playerinfo.constants.runspeed);
		end
	end
	if (Controls.check(pad, KEY_DLEFT)) then
		playerinfo.orient = 4;
		if (canmove(- playerinfo.constants.runspeed, currentTile)) then
			movereal("hor", -playerinfo.constants.runspeed);
		end
	end
	if (Controls.check(pad, KEY_DUP)) then
		if (playerinfo.supported) then
			playerinfo.orient = 8;
			playerinfo.jumping = true;
			playerinfo.vspeed = 8;
		end
	end

	movereal("ver", playerinfo.vspeed);

	checkjumping();

	if not (playerinfo.supported) and not (playerinfo.jumping) then
		movereal("ver", -1);
	end
end

function checkjumping()
	if (playerinfo.jumping) and (playerinfo.vspeed > 0) then
		playerinfo.vspeed = playerinfo.vspeed - 0.25;
	else
		playerinfo.jumping = false;
	end
end

function movereal(direction, speed)
	animate();
	if (direction == "hor") then
		playerinfo.position.absolute.x = playerinfo.position.absolute.x + speed;
	else
		playerinfo.position.absolute.y = playerinfo.position.absolute.y - speed;
	end
end

function canmove(speed, hitbox)
	if (speed < 0) then
		return checkmove("left", -1, hitbox);
	else
		return checkmove("right", 1, hitbox);
	end
end

function checkmove(direction, offset, hitbox)
	if (direction == "left") or (direction == "right") then
		for tile = 1, #hitbox[direction], 1 do
			if not (stage[hitbox[direction][tile].y][hitbox[direction][tile].x + offset] == 0) then
				return false;
			end
		end
	else
		for tile = 1, #hitbox[direction], 1 do
			if not (stage[hitbox[direction][tile].y + offset][hitbox[direction][tile].x] == 0) then
				return false;
			end
		end
	end

	return true;
end

function createHitbox(currentTileRaw, direction, offset, length)
	hitbox = {};

	if (direction == "ver") then
		for tile = 1, length, 1 do
			hitbox[tile] = { x = math.ceil(currentTileRaw.x + offset), y = math.ceil(currentTileRaw.y + (tile - 1)) };
		end
	else
		for tile = 1, length, 1 do
			hitbox[tile] = { x = math.ceil(currentTileRaw.x + tile), y = math.ceil(currentTileRaw.y + offset) };
		end
	end

	return hitbox;
end

function gravity()
	-- TOP HITBOX GRAPHICS
	Graphics.drawImage(((currentTile["top"][1].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["top"][1].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["top"][2].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["top"][2].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);

	-- LEFT HITBOX GRAPHICS
	Graphics.drawImage(((currentTile["left"][1].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["left"][1].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["left"][2].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["left"][2].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["left"][3].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["left"][3].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["left"][4].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["left"][4].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);

	-- RIGHT HITBOX GRAPHICS
	Graphics.drawImage(((currentTile["right"][1].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["right"][1].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["right"][2].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["right"][2].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["right"][3].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["right"][3].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["right"][4].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["right"][4].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);

	-- DOWN HITBOX GRAPHICS
	Graphics.drawImage(((currentTile["down"][1].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["down"][1].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);
	Graphics.drawImage(((currentTile["down"][2].x - screenLeftColumn) * tildim) - tileLeftOffset, ((currentTile["down"][2].y - screenUpperRow) * tildim) - tileUpperOffset, placeholder);



	if (stage[currentTile["down"][1].y + 1][currentTile["down"][1].x] == 1) or (stage[currentTile["down"][2].y + 1][currentTile["down"][2].x] == 1) then
		playerinfo.supported = true;
	else
		playerinfo.supported = false;
	end
end

function drawPlayer()
	if (playerinfo.orient == 6) then
		if (playerinfo.state) then
			Graphics.drawImage(playerinfo.position.relative.x, playerinfo.position.relative.y, wixpr21);
		else
			Graphics.drawImage(playerinfo.position.relative.x, playerinfo.position.relative.y, wixpr22);
		end
	elseif (playerinfo.orient == 4) then
		if (playerinfo.state) then
			Graphics.drawImage(playerinfo.position.relative.x, playerinfo.position.relative.y, wixpl21);
		else
			Graphics.drawImage(playerinfo.position.relative.x, playerinfo.position.relative.y, wixpl22);
		end
	elseif (playerinfo.orient == 8) then
		Graphics.drawImage(playerinfo.position.relative.x, playerinfo.position.relative.y, wprfall);
	end
end

function drawMap()
	screenLeftColumnRaw = (playerinfo.position.absolute.x - playerinfo.position.relative.x) / tildim;
	screenUpperRowRaw = (playerinfo.position.absolute.y - playerinfo.position.relative.y) / tildim;

	-- The absolute tile position of the leftmost tile in the camera view
	screenLeftColumn = math.floor(screenLeftColumnRaw);
	screenUpperRow = math.floor(screenUpperRowRaw);


	-- The offset in pixels of the player to the nearest tile on the left
	tileLeftOffset = (screenLeftColumnRaw - screenLeftColumn) * tildim;
	tileUpperOffset = (screenUpperRowRaw - screenUpperRow) * tildim;

	-- Draw the room from top to bottom
	for rowNo = screenUpperRow, screenUpperRow + 21, 1 do
		if rowNo >= 1 and rowNo <= #stage  then
			-- Magic numbers: we draw as many tiles as fit on the screen + 1 (to prevent NES-like flicker)
			-- columnNo = no of currently drawing column in room (absolute)
			for columnNo = screenLeftColumn - 1, screenLeftColumn + 34, 1 do
				if columnNo >= 1 and columnNo <= #stage[rowNo] then
					if stage[rowNo][columnNo] == 1 then
						Graphics.drawPartialImage(((columnNo - screenLeftColumn) * tildim) - tileLeftOffset, ((rowNo - screenUpperRow) * tildim) - tileUpperOffset, 0, 24, 12, 12, tileset);
					end
				end
			end
		end
	end
end

-- Current map height: 360, width: 600

while true do
	pad = Controls.read();
	Graphics.initBlend(TOP_SCREEN)
	
	drawMap();
	drawPlayer();
	move();
	--gravity();

	Screen.debugPrint(0,0, "SCREEN LEFT COLUMN: " .. screenLeftColumn, white, BOTTOM_SCREEN)
	Screen.debugPrint(0,16, "X: " .. playerinfo.position.absolute.x .. ", Y: " .. playerinfo.position.absolute.y, white, BOTTOM_SCREEN)
	--Screen.debugPrint(0,32, "CURRENT TILE: " .. currentTile[1].x .. " " .. currentTile[1].y, white, BOTTOM_SCREEN)
	--Screen.debugPrint(0,48, "UNDER ME IS: " .. stage[currentTile[1].y + 1][currentTile[1].x] .. " OR " .. stage[currentTile[2].y + 1][currentTile[2].x], white, BOTTOM_SCREEN)

--playerinfo.position.absolute.x = playerinfo.position.absolute.x + 1
--playerinfo.position.absolute.y = playerinfo.position.absolute.y + 1

	Graphics.termBlend()

	Screen.refresh()
	Screen.flip()
	Screen.waitVblankStart()
	Screen.clear(BOTTOM_SCREEN)
	oldpad = pad;
end