program SPH

  use variables
  
  implicit none
  
  call inicializar()
  
  call inicial()
  
  !open(10,file='datos.dat')
  
  !do z=1,n 
     
     !write(10,*)R(z,1),R(z,2),V(z,1),V(z,2),A(z,1),A(z,2),U(z),P(z),dens(z),t
     
  !enddo
  
  !print*,'llego hasta aqui'
  
  call frontera()
  
  !print*,'llego hasta aqui'
  
  call biseccion()

  !call calcularH()
  
  !print*,'llego hasta aqui'
  
  !call kernel()
  
  !print*,'llego hasta aqui'
  
  !call densidad()
  
  !call presion()
  
  !do while(t<tf) 
     
     !print*,'llego hasta aqui'
     
     !call derivadaKernel()
     
     !print*,'llego hasta aqui'
     
     !call aceleracion()
     
     !print*,'llego hasta aqui'
     
     !call cambioEnergia()
     
     !print*,'llego hasta aqui'
     
     !call RK4()
     
     !print*,'llego hasta aqui'
     
     !call frontera()
     
     !do z=1,n 
        
        !write(10,*)R(z,1),R(z,2),V(z,1),V(z,2),A(z,1),A(z,2),U(z),P(z),dens(z),t
        
     !enddo
     
     !call calcularH()
     
     !call kernel()
     
     !call densidad()
     
     !call presion()
     
     !t=t+dt
     
     !print*,t
     
  !enddo
  
  !close(10)

end program
