clean: 
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.key
set: 
	touch cds.lib hdl.var
	mkdir mux.lib
	echo "define mux_lib ./mux.lib" >> ./cds.lib
	echo "define WORK mux_lib" >> ./hdl.var
compile:
	xmvlog -MESS -linedebug ./*v
elab:
	xmelab -MESS -access rwc tb_mux4x1

sim:
	xmsim -MESS tb_mux4x1 -gui 


all: clean set compile elab sim
