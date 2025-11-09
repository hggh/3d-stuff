
difference() {
    rotate([180, 0, 0])import("/home/jonas/entwicklung/3d-stuff/Folienabroller/Folienabroller-Gehäuse.stl");
    
    translate([346/2 -70, -40, -5]) cube([300, 100, 100]);
    
    translate([-346/2, -40, -5]) cube([70, 100, 100]);
    
    translate(-[346/2-70, 0, -29]) cube([40, 56, 64], center=true);
    
    translate([346/2-70, 0, 29]) cube([40, 56, 64], center=true);
}
