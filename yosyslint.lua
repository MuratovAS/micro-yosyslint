VERSION = "0.0.1"

local os = import("os")
local micro = import("micro")
local shell = import("micro/shell")

function init()
	local yosys_r = shell.ExecCommand("yosys", "-V")
  if yosys_r == "" then
    micro.Log("yosys - not found")
  else
  	micro.Log("yosys - used to check syntax")
		linter.makeLinter("verilog", "verilog", "yosys", {"-q" ,"%f"}, "%f:%l:.+: %m")
		return
	end

  -- There is a problem, in "apio raw" you need to transmit
  -- all parameters with one row. The "Linter.makerInter" function
  -- cannot pass in the program parameters with one row.
  -- As a result, I had to create a bash script.
	local apio_r = shell.ExecCommand("apio", "raw", "yosys -V")
  if apio_r == "" then
    micro.Log("apio yosys - not found")
  else
  	micro.Log("apio yosys - used to check syntax")
  	local homePth = os.Getenv("HOME")
		linter.makeLinter("verilog", "verilog", homePth .. "/.config/micro/plug/yosyslint/apioYosys.sh", {"-q" ,"%f"}, "%f:%l:.+: %m")
		return
	end

end


