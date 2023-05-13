include <BOSL/constants.scad>
use <BOSL/shapes.scad>

$fn=190;


LIGHT_POST_D = 25.4;
LIGHT_POST_H = 49;
MOUNT_D = 115;

module left() {
    hull() {
        translate([-MOUNT_D/2, 0 , 0]) {
            cylinder(d=11, h=3);
        }
        translate([0, 41-10, 0]) {
            cylinder(d=11, h=3);
        }
    }
    translate([-MOUNT_D/2, 0 , 0]) {
        cylinder(d=15, h=3);
    }
}

module right() {
    hull() {
        translate([MOUNT_D/2, 0 , 0]) {
            cylinder(d=11, h=3);
        }
        translate([0, 41-10, 0]) {
            cylinder(d=11, h=3);
        }
    }
    translate([MOUNT_D/2, 0 , 0]) {
        cylinder(d=15, h=3);
    }
}


difference() {
    union() {
        left();
        right();
    }
    translate([-MOUNT_D/2, 0 , 0]) {
        cylinder(d=5.5, h=5);
    }
    translate([MOUNT_D/2, 0 , 0]) {
        cylinder(d=5.5, h=5);
    }
}




translate([0, 44-(LIGHT_POST_D/2), 0]) {
   cylinder(d=LIGHT_POST_D, h=LIGHT_POST_H);
   
   translate([0, 0, LIGHT_POST_H]) 
   torus(id=LIGHT_POST_D-5, od=LIGHT_POST_D+3);
}



