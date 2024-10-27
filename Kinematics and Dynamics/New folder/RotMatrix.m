function Rot=RotMatrix(axis,angle)
  Rot=zeros(3,3);
  magnAxis=sqrt(axis'*axis);
  normAxis=axis/magnAxis;
  Rot=[0 -normAxis(3) normAxis(2);...
       normAxis(3) 0 -normAxis(1);...
       -normAxis(2) normAxis(1) 0]*sin(angle)+...
       (eye(3)-normAxis*normAxis')*cos(angle)+normAxis*normAxis';
return