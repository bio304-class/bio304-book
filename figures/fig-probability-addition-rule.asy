

settings.outformat = "pdf";
size(18cm);
defaultpen(fontsize(12pt));


pair z1 = (0,0);
pair z2 = (1,-1);
pair baseline = (0, -2.75);
pair midline = (0, -0.5);

path disk1 = circle(z1, 1);
path disk2 = circle(z2, 1);
path overlap = buildcycle(disk2, disk1);

transform shift0 = shift(1,0);
transform shift1 = shift(5,0);
transform shift2 = shift(2,0);


// Draw left most discs
filldraw(disk1, red+opacity(0.5));
filldraw(disk2, blue+opacity(0.5));
transform textshift1 = shift(0.5, 0);
label("$P(A\ \mbox{or}\ B)$", textshift1 * baseline);

// Draw equal sign
transform textshift2 = textshift1 * shift(2.5);
label("\boldmath$=$", textshift2 * midline, p = fontsize(18pt));

// Draw disc representing P(A)
filldraw(shift1 * disk1, red+opacity(0.5));
label("$P(A)$", shift1 * baseline);

label("\boldmath$+$", shift(6.5, 0) * midline, p = fontsize(18pt));

// Draw disc representing P(B)
filldraw(shift1 * shift2 * disk2, blue+opacity(0.5));
label("$P(B)$", shift0 * shift1 * shift2 * baseline);

label("\boldmath$-$", shift(10, 0) * midline, p = fontsize(18pt));

// draw intersection
filldraw(shift(12,0) * overlap, (red+opacity(0.5)));
filldraw(shift(12,0) * overlap, (blue+opacity(0.5)));
label("$P(A\ \mbox{and}\ B)$", shift(12, 0) * baseline);


