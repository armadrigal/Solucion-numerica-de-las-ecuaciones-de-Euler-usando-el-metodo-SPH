module variables 

integer n,d,i,j,k,ker,z,i1,j1
real(16),allocatable,dimension(:,:,:)::dW,Rn
real(16),allocatable,dimension(:,:)::W,R,V,A,q,dM4,dM5,dM6,M4,M5,M6,X,temp1,K1,K2,K3,K4
real(16),allocatable,dimension(:)::M,U,dU,P,dens,H,omega,sigma,temp2,H0,H1,H2,fH0,fH1,an,bn,Pn,fa,fb,fP
!real(16),allocatable,dimension(:)::
real(16)x1,x2,y1,y2,d1,d2,d3,d4,pi,c1,c2,c3,c4,gama,t,tf,dt,tol,eta

end module
