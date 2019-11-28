$fn=64;
difference(){

    {
        xdim2 = 86;
        //need 70 interior
        //ie xdim1-12=70
        //xdim1 = 82
        //an increase of 22
        ydim2 = 51;
        zdim2 = 32;
        translate([-xdim2/2, -ydim2/2, -zdim2])
        {
            cube([xdim2,ydim2,zdim2]);
        }
    }
    xdim1 = 82;
    ydim1 = 23;
    zdim1 = 30;
    //-6.5 was 0 comment of -zdim])
    //positive/negative x end cutout
    translate([-xdim1/2, -ydim1/2, -29.5])
    {
        cube([xdim1,ydim1,zdim1]);
    }
    //programmer cutout
    translate([-xdim1/2+2, -(ydim1-12)/2, -12.5])
    {
        cube([xdim1+2,ydim1-12,4]);
    }
    //positive/negative y side cutout
    translate([-(xdim1-12)/2, -(ydim1+22)/2, -29.5])
    {
        cube([xdim1-12,ydim1+22,zdim1]);
    }
    radius = 1.8;
    translate([-56/2-11,32/2,-10])
    {
        cylinder (18,radius,radius);
    }

    translate([-56/2-11,-32/2,-10])
    {
        cylinder (18,radius,radius);
    }

    translate([56/2+11,32/2,-10])
    {
        cylinder (18,radius,radius);
    }

    translate([56/2+11,-32/2,-10])
    {
        cylinder (18,radius,radius);
    }
    
}