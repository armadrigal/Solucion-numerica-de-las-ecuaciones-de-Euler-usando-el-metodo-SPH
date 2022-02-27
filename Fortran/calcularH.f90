subroutine calcularH()
  
  use variables
  
  H=0.1
  
  !tol=1e-25

  !H0=2.0
  !H1=5.0
  !fH1=1.0
  
  !do z=1,10
  !do while(abs(maxval(fH1))>tol)

     !print*,'R',R

     !H=H0
     !call kernel()
     !call densidad()
     !dens=4.0
     !fH0=H-eta*(M/dens)**(1.0/d)
     !fH0=H**2-2*H+1
     !print*,fH0,H0
     !print*,'H0',H0
     !print*,'kernel',W
     !print*,'densidad',dens
     
     !H=H1
     !call kernel()
     !call densidad()
     !dens=4.0
     !fH1=H-eta*(M/dens)**(1.0/d)
     !fH1=H**2-2*H+1    
     !print*,fH1,H1
     !H0=H1
     !H1=H2
     !H2=H1-(fH1/(fH1-fH0))*(H1-H0)
     
     !H0=H1
     !H1=H2
     
     !print*,fH1
     
  !enddo
  
  !do i=1,n

     !print*,H2(i)
  
  !enddo

  !H=H2
  
end subroutine calcularH
