VERSION = "0.0.2"

local micro = import("micro")

function init()
		linter.makeLinter("verilog", "verilog", "yosys", {"-q" ,"%f"}, "%f:%l:.+: %m")
end