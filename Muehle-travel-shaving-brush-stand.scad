$fn=190;


union() {
    difference() {
        cylinder(d=31, h=4);
        cylinder(d=26, h=5);
        translate([-26/2, 0, 0]) cube([25.5, 25.5, 10]);
    }

    difference() {
        cylinder(d=39, h=4);
        cylinder(d=29, h=4);
        translate([-39/2, -(39/2)+6, 0]) cube([100, 100, 100]);
        translate([8, -39/2, 0]) cube([10, 10, 65]);
        translate([-8- 10, -39/2, 0]) cube([10, 10, 65]);
    }
    union() {
        difference() {
            cylinder(d=43, h=60);
            cylinder(d=39, h=70);
            translate([-43/2, -(43/2)+4, 0]) cube([100, 100, 100]);
            translate([8, -43/2, 0]) cube([10, 10, 65]);
            translate([-8- 10, -43/2, 0]) cube([10, 10, 65]);
        }
    }
    translate([-29/2 + 8, -29/2 -1.75, 0]) cylinder(d=8, h=4);
    translate([29/2 - 8, -29/2 -1.75, 0]) cylinder(d=8, h=4);
    

}

translate([40, 0, 0]) {
    difference() {
        union() {
            difference() {
                cylinder(d=45, h=5);
                cylinder(d=31, h=6);
                translate([-45/2, -10, 0]) cube([100, 100, 100]);
            }
            difference() {
                cylinder(d=38, h=5);
                cylinder(d=31, h=10);
            }
        }
        translate([0, 0, 1])
        union() {
            difference() {
                cylinder(d=43+0.1, h=60);
                cylinder(d=39, h=70);
                translate([-43/2, -(43/2)+4, 0]) cube([100, 100, 100]);
                translate([8+0.1, -43/2, 0]) cube([10, 10, 65]);
                translate([-8- 10-0.1, -43/2, 0]) cube([10, 10, 65]);
            }
        }            
    }
    translate([(38/2)-2.0, -(38/2)+10.5, 0]) cylinder(d=7, h=5);
    translate([-(38/2)+2.0, -(38/2)+10.5, 0]) cylinder(d=7, h=5);
}


