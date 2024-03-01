execute_or_exit('${@VEXE} -shared -cc gcc -enable-globals .')
$if windows {
	cp('shooter2d.dll', './shooter2d-gdproject/shooter2d.dll')!
}
$if linux {
	cp('shooter2d.so', './shooter2d-gdproject/shooter2d.so')!
}
