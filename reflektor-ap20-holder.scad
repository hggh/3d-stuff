

$fn=190;

SIZE_HOLE_SCREW = 5.1;
GAP_HOLES = 19;
SIZE_HOLE_DUMMY = 4;


difference() {
    cube([35, 19, 4]);
    translate([7, 19/2, 0]) {
        cylinder(d=SIZE_HOLE_SCREW, h=10);
    }
    translate([7+GAP_HOLES, 19/2, 0]) {
        cylinder(d=SIZE_HOLE_DUMMY, h=3);
    }
}

translate([13, 0, 4]) {
    cube([2.5, 19, 1]);
}
translate([13, 0, 5]) {
    rotate([0, 2, 0]) cube([28, 19, 1.4]);
}

translate([28+13, 0, 3.42]) {
    rotate([270, 0, 0])cylinder(d=4, h=19);
}
