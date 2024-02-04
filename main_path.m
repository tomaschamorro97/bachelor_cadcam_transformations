    %Tomás Chamorro
    %Cod: 201610011014
    %Date: 06/08/2020

clc
clear all
close all

%Excercise 4.1
O_0 = [3450, 3917,65]';
Delta = [3300,3800,0]';
WORLD = eye(4);
AXES_SIZE = 50;
S_0 = WORLD;
S_0(1:3,4)= O_0;
[points_cart,triangles] = read_pseudo_vrml("vert_geom_coarse.txt","vert_topo_coarse.txt");
N_points = size(points_cart,1);
figure(1)
draw_fill_solid(points_cart,triangles,"b")
points_h = ones(4,N_points);
points_h(1:3,:) = points_cart';
figure(2)
plt_axes_str(WORLD, AXES_SIZE, "k", "b", "r", "Xw","Yw","Zw","Ow")


%4.2
M1 = eye(4);
M1(1:3,4) = -Delta;
points_2 = M1*points_h;
S2 = M1*S_0;
%points_2 = points_2;
% points_2(:,4) = []
draw_fill_solid(points_2(1:3,:)',triangles,"X")
plt_axes_str(S2,AXES_SIZE,"k","b","r","X2","Y2","Z2","O2")


%4.3
u = [0.9501, 0.2311, 0.6068]';
u = u/norm(u);
temp = [0.4860, 0.8913, 0.7621]';
w = cross(u,temp);
w = w/norm(w);
v = cross(w,u);
M2(1:3,1:3) = [u,v,w];
M2(1:3,4) = [0];
M2(4,:) = [0,0,0,1];
isdet = det(M2(1:3,1:3));







