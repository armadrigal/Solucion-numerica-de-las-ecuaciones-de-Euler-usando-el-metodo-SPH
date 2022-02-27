subroutine frontera() 

use variables

!!!!!!!CONDICION SOBRE EL DOMINIO

do i=1,n 

   if(R(i,1)<x1) then 
      
      R(i,1)=R(i,1)+(x2-x1)
      
   else if(R(i,1)>x2) then 
      
      R(i,1)=R(i,1)-(x2-x1)
      
   else if(R(i,2)<y1) then 
      
      R(i,2)=R(i,2)+(y2-y1)
      
   else if(R(i,2)>y2) then 
      
      R(i,2)=R(i,2)-(y2-y1)
      
   end if
   
enddo

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

do i=1,n 
   
   do j=1,n 
      
      do k=1,d 
         
         Rn(i,j,k)=R(j,k)
         
      enddo
      
   enddo
   
enddo

!CONDICION SOBRE EL KERNEL

!MODIFICAR ESTA CONDICION, TIENE ERRORES

do i=1,n
   
   c1=abs(x1-R(i,1)) 
   c2=abs(x2-R(i,1))
   c3=abs(y1-R(i,2))
   c4=abs(y2-R(i,2))
   
   do j=1,n
      
      d1=sqrt((R(i,1)-Rn(i,j,1))**2+((R(i,2)-(y2-y1))-Rn(i,j,2))**2)
      d2=sqrt(((R(i,1)-(x2-x1))-Rn(i,j,1))**2+(R(i,2)-Rn(i,j,2))**2)
      d3=sqrt((R(i,1)-Rn(i,j,1))**2+((R(i,2)+(y2-y1))-Rn(i,j,2))**2)
      d4=sqrt(((R(i,1)+(x2-x1))-Rn(i,j,1))**2+(R(i,2)-Rn(i,j,2))**2)
      
      if(c4<H(i) .and. (c1>H(i) .and. c2>H(i)) .and. d1<H(i)) then !caso 1
         
         Rn(i,j,2)=R(j,2)+(y2-y1)
         
      else if(c2<H(i) .and. (c3>H(i) .and. c4>H(i)) .and. d2<H(i)) then !caso 2
         
         Rn(i,j,1)=R(j,1)+(x2-x1)
         
      else if(c3<H(i) .and. (c1>H(i) .and. c2>H(i)) .and. d3<H(i)) then !caso 3
         
         Rn(i,j,2)=R(j,2)-(y2-y1)
         
      else if(c1<H(i) .and. (c3>H(i) .and. c4>H(i)) .and. d4<H(i)) then !caso 4
         
         Rn(i,j,1)=R(j,1)-(x2-x1)
         
      else if(c1<H(i) .and. c4<H(i)) then !caso 5
         
         if(d1<H(i)) then 
            
            Rn(i,j,2)=R(j,2)+(y2-y1)
            
         else if(d4<H(i)) then
            
            Rn(i,j,1)=R(j,1)-(x2-x1)
            
         else if(d1<H(i) .and. d4<H(i)) then
            
            Rn(i,j,1)=R(j,1)-(x2-x1)
            Rn(i,j,2)=R(j,2)+(y2-y1)
            
         end if
         
      else if(c2<H(i) .and. c4<H(i)) then !caso 6
         
         if(d1<H(i)) then 
            
            Rn(i,j,2)=R(j,2)+(y2-y1)
            
         else if(d2<H(i)) then
            
            Rn(i,j,1)=R(j,1)+(x2-x1)
            
         else if(d1<H(i) .and. d2<H(i)) then
            
            Rn(i,j,1)=R(j,1)+(x2-x1)
            Rn(i,j,2)=R(j,2)+(y2-y1)
            
         end if
         
      else if(c2<H(i) .and. c2<H(i)) then !caso 7
         
         if(d3<H(i)) then 
            
            Rn(i,j,2)=R(j,2)-(y2-y1)
            
         else if(d2<H(i)) then
            
            Rn(i,j,1)=R(j,1)+(x2-x1)
            
         else if(d3<H(i) .and. d2<H(i)) then
            
            Rn(i,j,1)=R(j,1)+(x2-x1)
            Rn(i,j,2)=R(j,2)-(y2-y1)
            
         end if
         
      else if(c1<H(i) .and. c3<H(i)) then !caso 8
         
         if(d3<H(i)) then 
            
            Rn(i,j,2)=R(j,2)-(y2-y1)
            
         else if(d4<H(i)) then
            
            Rn(i,j,1)=R(j,1)-(x2-x1)
            
         else if(d3<H(i) .and. d4<H(i)) then
            
            Rn(i,j,1)=R(j,1)-(x2-x1)
            Rn(i,j,2)=R(j,2)-(y2-y1)
            
         end if
         
      end if
      
   enddo
   
enddo

end subroutine
