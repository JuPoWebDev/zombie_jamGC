-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

--Taille de l'écran de jeu
-- 1280 / 8 / 4 = 40 tuiles
-- 640 / 8 / 4 = 20 tuiles
-- J'ai mis x4 la taille des tuiles pour plus de lisibilité
love.window.setMode(1280,640)

local game = require("game")

heros = {}


function love.load()
  game.load_tilesheet()
    
end


function love.update(dt)

  
  


end

function love.draw()
game.draw()

end