subroutine biseccion()
  
  use variables
  
  an=-1.0
  bn=3.0
  fP=1.0
  tol=1e-2
  !print*,H
  H=an
  call kernel()
  print*,W
  call densidad()
  fa=H-eta*(M/dens)**(1.0/d)
  !fa=H**2-1
  H=bn
  call kernel()
  call densidad()
  fb=H-eta*(M/dens)**(1.0/d)
  !fb=H**2-1

  do while(maxval(abs(fP))>tol)

     !do i1=1,n
     Pn=(an+bn)/2.0
     
     !H=an
     !call kernel()
     !call densidad()
     !fa=H-eta*(M/dens)**(1.0/d)
     !fa=H**2-1
     !print*,R(1,1)
     !H=bn
     !call kernel()
     !call densidad()
     !fb=H-eta*(M/dens)**(1.0/d)
     !fb=H**2-1

     H=Pn
     !enddo

     call kernel()
     call densidad()
     fP=H-eta*(M/dens)**(1.0/d)
     !fP=H**2-1

     do j1=1,n
        !print*,abs(an(i)-bn(i))
        !print*,an,bn,Pn(i),fa(i),fb(i),fP(i)

        !if(abs(fP(i))>tol) then
           
        if(abs(fP(j1))>tol .and. (fa(j1)*fP(j1))>0.0) then

           an(j1)=Pn(j1)
           !print*,an(i),Pn(i),'se cumple condicion 1'
           fa(j1)=fP(j1)
              		    
        else if(abs(fP(j1))>tol .and. (fb(j1)*fP(j1))>0.0) then
           
           bn(j1)=Pn(j1)
           !print*,bn(i),Pn(i),'se cumple condicion 2'
           fb(j1)=fP(j1)
          
        else
 
           print*,'no se cumple ninguna condicion'
           print*,abs(fP(j1))!,fa(i)*fP(i),fb(i)*fP(i)

        end if
        
        !end if
        
     enddo
     
  enddo
  !print*,H
end subroutine biseccion
