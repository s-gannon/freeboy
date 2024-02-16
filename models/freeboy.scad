use <MCAD/boxes.scad>

// Fidelity of all objects rendered, increase for final print
$fn = 50;

// Display (measurements in inches)
lcd_housing      = [6.75   , 4.375 , 0.71875];
lcd_bezel_inset  = [6.0625 , 3.375 , 0.12515];
lcd_bezel_offset = [0.34375, 0.5   , 1.09375];
port_housing     = [5.375  , 4.1875, 0.5    ];

module monitor(){
	difference(){
		translate([0, 0, 0.5])
		cube(lcd_housing);
		translate(lcd_bezel_offset)
		cube(lcd_bezel_inset);
	}
	translate([0.6875, 0.09375, 0])
	cube(port_housing);
}

module libre_renegade(){}

monitor();
