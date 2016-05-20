buildPlateLength = 150;
buildPlateWidth = 200;
height = 20;
wallThickness = 5;
flair = 20;
buffer = flair + 5;



union() {
	translate([0, 0, wallThickness/2]) cube([buildPlateLength - buffer, buildPlateWidth-buffer, wallThickness], center = true);

	translate([0, (buildPlateWidth-buffer)/2, height/2]) cube([buildPlateLength, wallThickness, height], center = true);

	translate([0, -(buildPlateWidth-buffer)/2, height/2]) cube([buildPlateLength, wallThickness, height], center = true);

	translate([-(buildPlateLength-buffer)/2, 0, height/2]) cube([wallThickness, buildPlateWidth, height], center = true);

	translate([(buildPlateLength-buffer)/2, 0, height/2]) cube([wallThickness, buildPlateWidth, height], center = true);
}