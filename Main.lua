-- Main

local APIs = {}
function require(file)
    local API = dofile(file .. ".lua")
    if not APIs[file] then
        APIs[file] = API
    end
end

require "World"
require "Scene"
require "Camera"

local world = APIs.World.createNewWorld("World")
local scene = APIs.Scene.createNewScene("Scene",world)
local camera = APIs.Camera.createNewCamera("Camera_Scene1_1",scene)
scene:setBackground(colors.lightBlue)

local scene2 = APIs.Scene.createNewScene("Scene2",world)
local camera2 = APIs.Camera.createNewCamera("Camera_Scene2_1",scene2)
scene2:setBackground(colors.blue)

local switch = false
while true do
    os.pullEvent("key")
    switch = not switch
    if switch then
        camera:render()
    else
        camera2:render()
    end
end