%{ 
first we fix the domain of the problem by setting nelx = 60 nely = 20
penal =3 rmin =1.5

Now the variables are volfrac and BCs,
lets take vol frac in range from 0.4 to 0.6.
BCs can be : simply supported and cantilever type.
The force acting for now we take as vertical only at various locations.

The topology settings that we would be saving for our Deep Learing Model
are :Force in Y-dir, location of force from left end ,
volFrac , output image generated after topology optimization.

So in summary we have an input vector of 3 features and 1 output image
corresponding to that vector.
so we can have a matrix with 4 columns(Fy,XL,VolF) and number of rows
equivalent to the number of training examples we want to generate.
saveas(gcf,'Barchart.png')
1.fx = f fy =f 
%}
 count = 1;
f = 10;
volfrac =0.6;
i = 1;
j=1;
while(volfrac>=0.4)
    mat(i,j)=volfrac;
    j = j+1;
    while(f>=1)
        mat(i,j)=f;
        top(60,20,volfrac,3.0,1.5,f,0);
        counti = count;
        str = string(counti);
        saveas(gcf,str,'png');
        count = count+1;
       j = j+1;
       f = f-1;
    end
j=1;
i = i+1;
f=10;
volfrac = volfrac-0.1;
end