%% meshed_reuleaux_tetrahedron
%
% Function to compute, display, and save a meshed Reuleaux tetrahedron. 
%
% Author & support : nicolas.douillet (at) free.fr, 2017-2020.
%
%% Syntax
%
% meshed_reuleaux_tetrahedron;
%
% meshed_reuleaux_tetrahedron(sample_step);
%
% meshed_reuleaux_tetrahedron(sample_step, shape);
%
% meshed_reuleaux_tetrahedron(sample_step, shape, option_display);
%
% [V, T] = meshed_reuleaux_tetrahedron(sample_step, shape, option_display);
%
%% Description
%
% meshed_reuleaux_tetrahedron computes and displays the meshed Reuleaux
% tetrahedron included in the unit sphere, and which each
% edge is sampled in 32.
%
% meshed_reuleaux_tetrahedron(sample_step) uses sample_step steps.
%
% meshed_reuleaux_tetrahedron(sample_step, shape) adds a shape
% option to the tetrahedron, the 'regular' version, or quadratic 2 'inflated' version.
%
% meshed_reuleaux_tetrahedron(sample_step, shape, option_display)
% displays the result when option_display is logical *true/1, and doesn't when it is
% logical false/0.
%
% [V, T] = meshed_reuleaux_tetrahedron(sample_step, shape, option_display) stores the resulting
% vertices coordinates in the array V, and the corresponding triplet indices list in the array T.
% 
%% See also
%
% <https://fr.mathworks.com/matlabcentral/fileexchange/64395-sample_triangle sample_triangle> |
% <https://fr.mathworks.com/help/matlab/ref/mesh.html?s_tid=srchtitle mesh> | 
% <https://fr.mathworks.com/help/matlab/ref/trimesh.html?searchHighlight=trimesh&s_tid=doc_srchtitle trimesh>
%
%% Input arguments
%
% - sample_step : positive integer scalar, power of 2.
%
% - shape : character string in the set {*'regular','inflated'}. Case insensitive.
%
% - option_display : logical *true (1) / false (0).
%
%% Output arguments
%
%      [ |  |  |]
% - V [Vx Vy Vz] : real matrix double, the point set. Size = [nb_vertices,3].
%      [ |  |  |]
%
%      [ |  |  |]
% - T [T1 T2 T3] : positive integer matrix double, the triangulation. Size = [nb_triangles,3].
%      [ |  |  |]
%
%% Example #1
% Computes and displays the standard meshed Reuleaux tetrahedron,
% included in the unit sphere, and which each edge is divided into 32 samples.

meshed_reuleaux_tetrahedron;

%% Example #2
% Computes, displays, and saves an 'Inflated' meshed Reuleaux tetrahedron,
% which each edge is divided into 8 samples. Radius size is then increased to 9.

[V,T] = meshed_reuleaux_tetrahedron(8,'inflated',true);
V = 9*V;