% Mary Robinson
% L01_Q13

clear all

diameterCcm = 15
h = 45
CylinderV = pi * (diameterCcm/2)^2 * h
RectangluarCubeV = 15 * 15 * 45

NumberofCylinders = 20

VolumeFoam = NumberofCylinders * (RectangluarCubeV - CylinderV)
