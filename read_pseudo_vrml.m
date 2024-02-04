%Tomás Chamorro
%Cod: 201610011014
%Date: 06/08/2020
function [points, triangs]=read_pseudo_vrml(geom_file_name,topo_file_name)
    points = load(geom_file_name)
    triangs = load(topo_file_name)
    triangs = ones(size(triangs)) + triangs;
    
end