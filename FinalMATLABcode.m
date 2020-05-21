h=6
b=3
A=h*b
y_A=1.5
y_B=1
P=5
P_y=(4/5)*P
P_z=(3/5)*P
V=P_z
L=15
M_x=P_z*L
I=(1/12)*b*h^3
Q_A=0.5*(((h^2)*0.25)-(y_A^2))*b
Q_B=0.5*(((h^2)*0.25)-(y_B^2))*b
NStressA_x=(P_y/A)+((M_x*y_A)/I)
NStressA_y=0
SStressA_xy=[(6*V)/(b*(h^3))]*(((h^2)/4)-(y_A^2))
NStressA_1=((NStressA_x+NStressA_y)/2)+sqrt((((NStressA_x-NStressA_y)/2)^2)+(SStressA_xy^2))
NStressA_2=((NStressA_x+NStressA_y)/2)-sqrt((((NStressA_x-NStressA_y)/2)^2)+(SStressA_xy^2))
NStressB_x=(P_y/A)-((M_x*y_B)/I)
NStressB_y=0
SStressB_xy=[(6*V)/(b*(h^3))]*(((h^2)/4)-(y_B^2))
NStressB_1=((NStressB_x+NStressB_y)/2)+sqrt((((NStressB_x-NStressB_y)/2)^2)+(SStressB_xy^2))
NStressB_2=((NStressB_x+NStressB_y)/2)-sqrt((((NStressB_x-NStressB_y)/2)^2)+(SStressB_xy^2))
thetaPrinciple_A=0.5*atan(SStressA_xy/((NStressA_x-NStressA_y)/2))
thetaAssmax_1=0.5*atan((-(NStressA_x-NStressA_y)/2)/SStressA_xy)
thetaAssmax_2=(2*thetaAssmax_1)+pi
SStressAmax=sqrt((((NStressA_x-NStressA_y)/2)^2)+(SStressA_xy^2))
thetaPrinciple_B=0.5*atan(SStressB_xy/((NStressB_x-NStressB_y)/2))
thetaBssmax_1=0.5*atan((-(NStressB_x-NStressB_y)/2)/SStressB_xy)
thetaBssmax_2=(2*thetaBssmax_1)+pi
SStressBmax=sqrt((((NStressB_x-NStressB_y)/2)^2)+(SStressB_xy^2))
theta=[0:pi/100:2*pi]
plot(theta, ((NStressA_x+NStressA_y)/2)+(((NStressA_x-NStressA_y)/2)*cos(2*theta))+(SStressA_xy*sin(2*theta)))
hold on
hold
plot(theta, ((NStressA_x+NStressA_y)/2)+(((NStressA_x-NStressA_y)/2)*cos(2*theta))+(SStressA_xy*sin(2*theta)),'r')
hold
plot(theta, ((NStressB_x+NStressB_y)/2)+(((NStressB_x-NStressB_y)/2)*cos(2*theta))+(SStressB_xy*sin(2*theta)))