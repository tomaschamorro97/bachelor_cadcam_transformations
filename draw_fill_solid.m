%Tomás Chamorro
%Cod: 201610011014
%Date: 06/08/2020
function draw_fill_solid(verts, loops, face_color)

    for i=1:size(loops,1)
        A = loops(i,:);
        X = [verts(A(1,1),1),verts(A(1,2),1),verts(A(1,3),1)];
        Y = [verts(A(1,1),2),verts(A(1,2),2),verts(A(1,3),2)];
        Z = [verts(A(1,1),3),verts(A(1,2),3),verts(A(1,3),3)];
        plot3(X,Y,Z)
        hold on
        if face_color ~= 'X'
            fill3(X,Y,Z,face_color)
            hold on
        else
            plot3(X,Y,Z,'k')
        end
        
        
    end

end