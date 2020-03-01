
HOLDER_SIZE_Z = 19.5; // 19mm 
BLADE_SIZE_X = 26;    // 25mm
BLADE_SIZE_Y = 45;

BOX_SIZE_X = BLADE_SIZE_X + 2 + 2;
BOX_SIZE_Y = BLADE_SIZE_Y +2;

BOX_SIZE_Z = 40;


module upper_part() {
    difference() {
        cube([BOX_SIZE_X, BOX_SIZE_Y, HOLDER_SIZE_Z + 2 + 2]);
        translate([-1, 2, 2]) {
            cube([40, BLADE_SIZE_Y + 10, HOLDER_SIZE_Z]);
        }
        translate([-1, 25, HOLDER_SIZE_Z]) {
            cube([BOX_SIZE_X + 3, 300, 10]);
        }
    }
}


translate([0, 0, 10]) {
    upper_part();
}

union() {
    cube([BOX_SIZE_X, BOX_SIZE_Y +1.2, 1.2]);
    translate([0, 0, - BOX_SIZE_Z ]) {
        difference() {
            cube([BOX_SIZE_X, BOX_SIZE_Y +1.2, BOX_SIZE_Z]);
            translate([2, -2, 3]) {
                rotate([-3, 0, 0])
                cube([BLADE_SIZE_X, BLADE_SIZE_Y +2 , BOX_SIZE_Z ]);
            }
            translate([2, -1, 4]) {
                cube([BLADE_SIZE_X, BLADE_SIZE_Y +1, BOX_SIZE_Z]);
            }
            translate([BOX_SIZE_X / 2, -2, - 10]) {
                cylinder(d=18, h=30, $fn=90);
            }
        }
    }
}