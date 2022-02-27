subroutine RK4() 

  use variables

  X(:,1:d)=R
  X(:,d+1:2*d)=V
  X(:,2*d+1)=U
  
  K1(:,1:d)=V
  K1(:,d+1:2*d)=A
  K1(:,2*d+1)=dU
  
  R=R+(dt/2.0)*K1(:,1:d)
  V=V+(dt/2.0)*K1(:,d+1:2*d)
  U=U+(dt/2.0)*K1(:,2*d+1)
  
  call derivadaKernel()
  call aceleracion()
  call cambioEnergia()
  
  K2(:,1:d)=V
  K2(:,d+1:2*d)=A
  K2(:,2*d+1)=dU
  
  R=R+(dt/2.0)*K1(:,1:d)
  V=V+(dt/2.0)*K1(:,d+1:2*d)
  U=U+(dt/2.0)*K1(:,2*d+1)
  
  call derivadaKernel()
  call aceleracion()
  call cambioEnergia()
  
  K3(:,1:d)=V
  K3(:,d+1:2*d)=A
  K3(:,2*d+1)=dU
  
  R=R+dt*K1(:,1:d)
  V=V+dt*K1(:,d+1:2*d)
  U=U+dt*K1(:,2*d+1)
  
  call derivadaKernel()
  call aceleracion()
  call cambioEnergia()
  
  K4(:,1:d)=V
  K4(:,d+1:2*d)=A
  K4(:,2*d+1)=dU
  
  X=X+(dt/6.0)*(K1+2.0*K2+2.0*K3+K4)
  
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!111
  
  !print*,'Runge kutta'
  
  !print*,R(1,:)
  
  !print*,R(2,:)
  
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
  
  R=X(:,1:d)
  V=X(:,d+1:2*d)
  U=X(:,2*d+1)
  
end subroutine RK4
