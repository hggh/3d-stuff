include <BOSL/constants.scad>
use <BOSL/transforms.scad>


module hook() {
    chain_hull() {
        sphere(d=5, $fn=180);
        translate([10, 7, 0]) sphere(d=5, $fn=180);
        translate([10, 25, 0]) rotate([90,0, 0]) cylinder(d=8, h=7, $fn=180);
    }
}

module lochhalterung() {
    translate([0, 12, 0]) {
        rotate([90, 0, 0]) cylinder(d=4.5, h=10, $fn=180);
    }
}

cube([90, 2, 25]);

translate([10, 0, 20]) {
    rotate([0, 90, 0]) translate([-10, -25, 0]) hook();
    // 6.75 mm lochabstand
    translate([67.5, 0, 0]) {
        rotate([0, 90, 0]) translate([-10, -25, 0]) hook();
    }
}

translate([10, 0, 22]) {
    lochhalterung();
}