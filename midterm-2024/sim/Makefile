clean: 
	rm -rf xcelium.d *.log *.history *.key
	rm -rf worklib *.lib hdl.var
	rm -rf *.lib *.shm
set:
	mkdir ./sn54ls32.lib
	touch ./cds.lib
	touch ./hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define SN54LS32_lib ./sn54ls32.lib" >> cds.lib
	echo "define WORK SN54LS32_lib" >> hdl.var

compile:
	echo "----------Compile source files----------"
	xmvlog -MESS -linedebug ../src/*.v
	echo "----------End of compilation----------"

elab: 
	echo "----------Elaboration Design in the WORK library----------"
	xmelab -MESS -access +rwc tb_sn54ls32
	echo "----------End of Elaboration----------"

sim: 
	echo "----------Simulation in GUI mode----------"
	xmsim -MESS tb_sn54ls32 -gui
	echo "----------End of Simulation + Start GUI"

all: clean set compile elab sim
