subroutine kernel() 

  use variables

  q=0.0
  
  do i=1,n 
     
     do j=1,n 
        
        do k=1,d 
           
           q(i,j)=q(i,j)+(R(i,k)-Rn(i,j,k))**2
           
           !print*,(R(i,k)-Rn(i,j,k))**2,q(i,j)
           
        enddo
        
        !print*,q(i,j)
        
        q(i,j)=sqrt(q(i,j))/H(i)
        
        !print*,q(i,j),H(i)
        
     enddo
     
  enddo
  
  !print*,q(10,10)
  
  if(ker==4) then 
     
     call cubic()
     temp1=M4
     
  else if(ker==5) then 
     
     call quartic
     temp1=M5
     
  else if(ker==6) then 
     
     call quintic
     temp1=M6
     
  end if
  
  do i=1,n 
     
     do j=1,n 
        
        W(i,j)=temp1(i,j)/H(i)**2
        
     enddo
     
  enddo

end subroutine
