

BASE_X = 16;
BASE_Y = 36;

DOWN_SIZE_Y = 30;


union() {
    cube([BASE_X, BASE_Y, 2]);
    translate([BASE_X/2, BASE_Y/2, 2]) {
        cylinder(h=DOWN_SIZE_Y, d=9, $fn=100);
    }
    translate([BASE_X/2, BASE_Y + 15 / 2, DOWN_SIZE_Y +2]) {
        rotate([90, 0, 0]) cylinder(d=9, h=BASE_Y + 15, $fn=100);
    }

    translate([BASE_X/2, -7 + 2.5, DOWN_SIZE_Y - 7]) {
        cylinder(h=5, d=5, $fn=100);
    }

    translate([BASE_X/2, BASE_Y + (15/2) - 3  , DOWN_SIZE_Y - 7]) {
        cylinder(h=5, d=5, $fn=100);
    }
}