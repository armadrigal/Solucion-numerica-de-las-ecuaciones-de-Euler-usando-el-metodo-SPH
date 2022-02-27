subroutine inicializar 
  
  use variables
  !use parametros
  
  n=2
  d=2
  
  t=0.0
  tf=50.0
  dt=0.05
  
  ker=4
  
  tol=1e-20
  eta=1.0
  
  x1=0.0
  x2=1.0
  y1=0.0
  y2=1.0
  
  allocate(dW(n,n,d),Rn(n,n,d),W(n,n),R(n,d),V(n,d),A(n,d),q(n,n))
  
  allocate(dM4(n,n),dM5(n,n),dM6(n,n),M4(n,n),M5(n,n),M6(n,n),temp1(n,n),M(n),U(n))
  
  allocate(dU(n),P(n),dens(n),H(n),omega(n),sigma(3),K1(n,2*d+1))
  
  allocate(K2(n,2*d+1),K3(n,2*d+1),K4(n,2*d+1),X(n,2*d+1),H0(n))
  
  allocate(H1(n),H2(n),fH0(n),fH1(n),an(n),bn(n),Pn(n),fa(n),fb(n),fP(n))
  !se borro temp2	
  
  gama=5.0/3.0
  
  omega=1.0
  
  pi=acos(-1.0)
  
end subroutine inicializar
