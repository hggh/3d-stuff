
difference() {
    rotate([180, 0, 0])import("/home/jonas/entwicklung/3d-stuff/Folienabroller/Folienabroller-Gehäuse.stl");

    translate([(346/2-70 -7.5 - 300), -50, -5]) cube([300, 100, 100]);
    
    
    translate([(346/2-70 -7.5), -40, -5]) cube([7.5, 100, 2]);
    translate([(346/2-70 -7.5), -30, -5]) cube([7.5, 2, 65]);
    translate([(346/2-70 -7.5), 30-2, -5]) cube([7.5, 2, 65]);
    translate([346/2 -60, 0, 29]) cube([60, 56, 64], center=true);

    /*
    translate([(346/2-70 -7.5), -40, -5]) cube([15, 100, 2]);
    translate([(346/2-70 -7.5), -30, -5]) cube([15, 2, 65]);
    translate([(346/2-70 -7.5), 30-2, -5]) cube([15, 2, 65]);
    
    translate([(346/2-70 +7.5), -50, -5]) cube([80, 100, 100]);
    */
}