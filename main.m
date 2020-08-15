% Main fuction - lorenz system
%-------------------------------------------------------------------------
% Note: If you are using my code for your system or project, you should always cite my paper as a reference.
web('https://docs.google.com/document/d/1AbCxFoUhdOCppM8novgCdOv0F9mqYe7HlBU7yX7Svx0/edit?usp=sharing')
web('https://drive.google.com/file/d/1mBpWscE1-5Sm_lfEZ9M41eprqdRPYb10/view?usp=sharing')
web('published_work.html')

%--------------------------------------------------------------------------
 % Calling chaotic map
   clear all;
   pause(1);
   prompt=' Enter the initial value x:';
   x=input(prompt);
   prompt=' Enter the initial value y:';
   y=input(prompt);
   prompt=' Enter the initial value z:';
   z=input(prompt);
   prompt=' Enter the parameter value alpha a:';
   a=input(prompt);
   prompt=' Enter the parameter value beeta b:';
   b=input(prompt);
   prompt=' Enter the parameter value sigma sgm:';
   sgm=input(prompt);
 %--------------------------------------------------------------------------

   %demo: The given values are (only for lorenz general) just demo you need to find your own values 
   
   %--------------------------------------------------------------------------

   % x= 1 ; % Initial value
   % y= 1 ; % Initial value
   % z= 1 ; % Initial value
  %--------------------------------------------------------------------------

   % a=  28; % Parameter value
   % b= 8.0/3.0 ; % Parameter value
   % sgm=10; % Parameter value
   % sizr=256;
   % sizc=256;
%--------------------------------------------------------------------------

   prompt=' Enter the  dimension(matrix row) of the chaotic map:';
   sizr=input(prompt);
    prompt=' Enter the dimension(matrix column) of the chaotic map:';
   sizc=input(prompt);    
%-------------------------------------------------------------------------- 
   [out1,out2,out3] =lorenz(x,y,z,a,b,sgm,sizr,sizc);
%--------------------------------------------------------------------------

   disp('Output :');
   pause(1);
   disp(out1);
   disp(out2);
   disp(out3);
   
   figure;
contour(out1,out2,out3);
figure;
surf(out1,out2,out3);
figure;
mesh(out1,out2,out3);
