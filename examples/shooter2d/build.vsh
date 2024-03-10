import time
start := time.now()
compile_command := '${@VEXE} -shared -enable-globals -d no_backtrace .'
println("running: ${compile_command}")
execute_or_exit(compile_command)
println("took ${(time.now() - start)}")
$if windows {
	cp('shooter2d.dll', './shooter2d-gdproject/shooter2d.dll')!
}
$if linux {
	cp('shooter2d.so', './shooter2d-gdproject/shooter2d.so')!
}
