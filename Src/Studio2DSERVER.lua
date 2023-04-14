repeat task.wait() until game.Players.LocalPlayer.Character
local cam = game.Workspace.CurrentCamera
repeat task.wait()
	cam.CameraType = Enum.CameraType.Scriptable
	cam.FieldOfView = 0
until cam.CameraType == Enum.CameraType.Scriptable
cam.CFrame = workspace.CamFolder.MainCamera.CFrame * CFrame.new(0,0,-400)