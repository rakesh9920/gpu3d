clear; 
clear all;

% By setting this flag to 0, the color scale is automatically adjusted 
% By setting this flag to 1, the color scale can be manually tuned
% Search "if SETMAXCOLOR==1" below for details.
SETMAXCOLOR=0; 

%% Control Parameters

% Specify the exact name of the simulation output file
filename='liver_20M.mco_node_1';

% Number of absorption grid elements (see liver.mci)
NX=120; 
NY=120; 
NZ=120; 

% Extract (and average) a stack of horizontal slices (xy planes)
STARTSLICE=15; 
NSLICE=3; 
ENDSLICE=STARTSLICE+NSLICE-1; 

% Screen Resolution (for proper plot display)
NCOLPIXEL=1680; 
NROWPIXEL=1050; 

slice =['AVERAGE from ' int2str(STARTSLICE) ' to ' int2str(ENDSLICE)]; 

%% Import and Parse output file 

fid = fopen(filename);

for i=1:NZ
    tline = fgetl(fid); % Skip First Line
    temp(:,:,i)=fscanf(fid, '%f', [NY NX])';  % Read in slice

    tline = fgetl(fid); % Skip Extra Empty Space!!
    tline = fgetl(fid); % Skip Last Line
    tline = fgetl(fid); % Skip Empty Line
end

% rename output 
SimOutput3D=temp;

fclose(fid);

%% Average Slices 
SimOutput=0; 

% Sum N slices 
for i=1:NSLICE
    SimOutput=SimOutput+SimOutput3D(:,:,STARTSLICE+i-1); 
end

SimOutput=SimOutput/NSLICE; 

%% Plot 
biggest=max(max(SimOutput));  %For best viewing (color map)

compareplot=figure; 
set(compareplot,'Position',[0,0,NCOLPIXEL/2,NROWPIXEL], 'Name','Compare the Plots'); 
subplot (2,1,1); imagesc (SimOutput); colorbar;  title (['Absorption Density (J/cm^3): slice ' slice '- SimOutput']); 
if SETMAXCOLOR==1
caxis ([0 80]);  
end 
colormap jet;

subplot (2,1,2);
%contourlevel=[30  10 1 0.1  0.01 0.0001];
%[C,h]=contour (SimOutput, contourlevel);     
[C,h]=contour (SimOutput);     
clabel(C,h,'FontSize',12,'FontWeight','bold');
set(gca,'YDir','reverse');  
colorbar;  colormap jet; 
title ('Contour Plot of Absorption Density'); 
if SETMAXCOLOR==1
caxis ([0 80]);  
end 
 
%% Plot Vertical Slice

temp2(:,:)=SimOutput3D(NY/2-1,:,:); 
SimOutputvert=temp2; 
temp2(:,:)=SimOutput3D(NY/2,:,:); 
SimOutputvert=SimOutputvert+temp2; 
temp2(:,:)=SimOutput3D(NY/2+1,:,:); 
SimOutputvert=SimOutputvert+temp2; 
SimOutputvert=SimOutputvert'/3; 

biggest=max(max(SimOutputvert)); 

compareplot=figure; 
set(compareplot,'Position',[0,0,NCOLPIXEL/2,NROWPIXEL], 'Name','Compare the Plots'); 
subplot (2,1,1); imagesc (SimOutputvert); colorbar; colormap jet;
title (['Absorption Density (J/cm^3): vertical slice - SimOutput']); 
if SETMAXCOLOR==1
caxis ([0 150]);  
end 

subplot (2,1,2);
%contourlevel=[50 10 1 0.1  0.01 0.0001];
%[C,h]=contour (SimOutputvert, contourlevel);     
[C,h]=contour (SimOutputvert);     
clabel(C,h,'FontSize',12,'FontWeight','bold');
set(gca,'YDir','reverse');
colorbar;  title ('Contour Plot of Absorption Density'); 
if SETMAXCOLOR==1
caxis ([0 150]);  
end 
colormap jet;