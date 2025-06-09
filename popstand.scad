// SPDX-License-Identifier: MIT
$fa=1;
$fs=0.4;

base_diam = 60;            // Based on the widest part of the funko figure
base_thickness = 10;
attach_point_diam = 2.65;  // This is the exact size, make adjustments for proper fitment
attach_post_to_center = 5; // If your attach point isn't center, how far off center should it be
attach_post_h = 5;         // This is the exact size, make adjustments for proper fitment

// base();
// post();
popstand();

module popstand()
{
   base();
   translate([(0-attach_post_to_center), 0, (base_thickness-(attach_post_h-0.04))])
      post();
}

module base()
{
   cylinder(d=base_diam, h=base_thickness);
}

module post()
{
   cylinder(d=(attach_point_diam-0.20), h=attach_post_h+4);
}