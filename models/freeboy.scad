use <MCAD/boxes.scad>

//Fidelity of all objects rendered, increase for final print
$fn = 50;

// Main housing
big_rad = 3.75;
small_rad = 3;
thickness_in = 1/6;
length = 8;
housing_size = 15;
screen_size_in = [4.76378, 2.992126, 0.1653543];

function neg_log(x) = log(-x);
module half_cylinder(height, rad1, rad2){
    intersection(){
        cylinder(height, rad1, rad2);
        translate([0, -max(rad1, rad2), 0])cube([max(rad1, rad2), max(rad1, rad2) * 2, height]);
    }
}

//Screen
color("grey")
translate([0.5, -screen_size_in.y / 2, 4])
cube(screen_size_in);

//Housing
rotate([0,90,0])
difference(){
    cylinder(length, big_rad, small_rad);
	translate([0,0,-1.5])
	half_cylinder(length + 2, big_rad - thickness_in, small_rad  - thickness_in);
}