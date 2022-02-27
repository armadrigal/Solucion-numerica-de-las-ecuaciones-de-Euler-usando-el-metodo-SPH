SPH : variables.o inicializar.o inicial.o frontera.o calcularH.o biseccion.o cubic.o quartic.o quintic.o kernel.o densidad.o presion.o derivadaCubic.o derivadaQuartic.o derivadaQuintic.o derivadaKernel.o aceleracion.o cambioEnergia.o RK4.o SPH.o
	gfortran -o SPH SPH.o variables.o inicializar.o inicial.o frontera.o calcularH.o biseccion.o cubic.o quartic.o quintic.o kernel.o densidad.o presion.o derivadaCubic.o derivadaQuartic.o derivadaQuintic.o derivadaKernel.o aceleracion.o cambioEnergia.o RK4.o

SPH.o : SPH.f90
	gfortran -O -c -Wall SPH.f90

variables.o : variables.f90
	gfortran -O -c -Wall variables.f90

inicializar.o : inicializar.f90
	gfortran -O -c -Wall inicializar.f90

inicial.o : inicial.f90
	gfortran -O -c -Wall inicial.f90

frontera.o : frontera.f90
	gfortran -O -c -Wall frontera.f90

calcularH.o : calcularH.f90
	gfortran -O -c -Wall calcularH.f90

biseccion.o : biseccion.f90
	gfortran -O -c -Wall biseccion.f90

cubic.o : cubic.f90
	gfortran -O -c -Wall cubic.f90

quartic.o : quartic.f90
	gfortran -O -c -Wall quartic.f90

quintic.o : quintic.f90
	gfortran -O -c -Wall quintic.f90

kernel.o : kernel.f90
	gfortran -O -c -Wall kernel.f90

densidad.o : densidad.f90
	gfortran -O -c -Wall densidad.f90

presion.o : presion.f90
	gfortran -O -c -Wall presion.f90

derivadaCubic.o : derivadaCubic.f90
	gfortran -O -c -Wall derivadaCubic.f90

derivadaQuartic.o : derivadaQuartic.f90
	gfortran -O -c -Wall derivadaQuartic.f90

derivadaQuintic.o : derivadaQuintic.f90
	gfortran -O -c -Wall derivadaQuintic.f90

derivadaKernel.o : derivadaKernel.f90
	gfortran -O -c -Wall derivadaKernel.f90

aceleracion.o : aceleracion.f90
	gfortran -O -c -Wall aceleracion.f90

RK4.o : RK4.f90
	gfortran -O -c -Wall RK4.f90

cambioEnergia.o : cambioEnergia.f90
	gfortran -O -c -Wall cambioEnergia.f90

clean :
	rm *.o; rm *~; rm *.mod; rm SPH; clear
