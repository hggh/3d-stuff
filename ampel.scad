$fn=100;


module led_gehaeuse() {
	union() {
		difference() {
			translate([-5.5, -10, -5.5]) {
			
				cube([11, 3, 11]);

				
			}
			rotate([90, 0, 0]) {
				translate([0, 0, 8]) {
					cylinder(r=4.2, h=4, center=true);
				}
		}
		}

		difference() {
			rotate([90, 0, 0]) {
				cylinder(r=5, h=7, $fn=80);
			}
			rotate([90, 0, 0]) {
				cylinder(r=4.2, h=7, $fn=80);
			}
		translate([6, 3, 0]) {
				sphere(r=11);
			}
		}
	}
}



union() {
	led_gehaeuse();

	translate([10, 0, 0]) {
		led_gehaeuse();
	}

	translate([20, 0, 0]) {
		led_gehaeuse();
	}
}