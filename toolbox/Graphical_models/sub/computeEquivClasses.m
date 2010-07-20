function eqc = computeEquivClasses(pointers)
%% Return a cell array of equivalence classes corresponding to pointers
% 
%% Example
%
% computeEquivClasses([1 2 3 3 3 3 3 3 3 3])
%
% ans = {[1], [2], [3:10]}
%%
classes = uniquePMTK(pointers);
nclasses = numel(classes); 
eqc = cell(nclasses, 1); 
for i=1:nclasses
    eqc{i} = find(pointers == classes(i)); 
end


end
