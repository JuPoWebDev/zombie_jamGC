local game = {}

game.map = {}

game.map.grid = {
    {1,2,3,4,5,6,7,8,9,10},
    {11,12,13,14,15,16,17,18,19,20},
    {21,22,23,24,25,26,27,28,29,30},
    {1,2,3,4,5,6,7,8,9,10},
    {11,12,13,14,15,16,17,18,19,20},
    {21,22,23,24,25,26,27,28,29,30},
    {1,2,3,4,5,6,7,8,9,10},
    {11,12,13,14,15,16,17,18,19,20},
    {21,22,23,24,25,26,27,28,29,30},
    {1,2,3,4,5,6,7,8,9,10}
}

game.map.TILE_WIDTH = 8
game.map.TILE_HEIGHT = 8
game.map.MAP_HEIGHT = 10
game.map.MAP_WIDTH = 10

game.tile_textures = {}

game.tilesheet = nil



function game.load_tilesheet()

    game.tilesheet = love.graphics.newImage("images/tiles/zproject_scene_tileset.png")

    local tilesheet_nb_row = game.tilesheet:getHeight() / game.map.TILE_HEIGHT
    local tilesheet_nb_column = game.tilesheet:getWidth() / game.map.TILE_WIDTH

    local count = 1

    game.tile_textures[0] = nil

    for r=1, tilesheet_nb_row do
        for c=1, tilesheet_nb_column do
        
          game.tile_textures[count] = love.graphics.newQuad(
            (c-1) * game.map.TILE_WIDTH,
            (r-1)* game.map.TILE_HEIGHT,
            game.map.TILE_WIDTH, 
            game.map.TILE_HEIGHT, 
            game.tilesheet:getWidth(), 
            game.tilesheet:getHeight()
          )
         
          count = count + 1
        
        end
        
    
    end


end

function game.draw()
    local colonne, loadstring
    for ligne =1, game.map.MAP_HEIGHT do
        for colonne = 1, game.map.MAP_WIDTH do
            
            local id = game.map.grid[ligne][colonne]
            local texture_quad = game.tile_textures[id]

            if texture_quad ~= nil then
                local x = (colonne - 1) * game.map.TILE_WIDTH
                local y = (ligne - 1) * game.map.TILE_HEIGHT
                
                love.graphics.draw(game.tilesheet, texture_quad, x, y, 0,10,10)
            end

        end

    end

end



return game