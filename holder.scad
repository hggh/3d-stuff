$fn = 190;

difference() {
    cube([15, 15, 15]);
    
    translate([7.5, 4, -1]) cylinder(d=4.3, h=100);
    
    translate([-1, 11, 7.5]) rotate([0, 90, 0])cylinder(d=4.3, h=100);
}