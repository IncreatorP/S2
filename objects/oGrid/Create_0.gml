hSize = 25;
vSize = 30;
grid = ds_grid_create(hSize,vSize);


var stepSize = 64;
var num = 0;

var freq = 0.3;
var amp  = 16;

for (var yy = 0; yy < vSize; ++yy) {
    for (var xx = 0; xx < hSize; ++xx) {

        var locX = xx*stepSize + ((yy % 2)*(stepSize/2));
        var locY = yy*(stepSize/2);

        var h = sin(xx * freq) + cos(yy * freq * 1.2);
        var locZ = h * amp;
				locZ += -12 + irandom(24);

				var controlObject = instance_create_layer(locX, locY, "Handles", oHandle);
				controlObject.owner = self;		
				controlObject.num = num;		
				controlObject.xcoord = locX;
				controlObject.ycoord = locY;				
				controlObject.z = locZ;
				controlObject.xx = xx;
				controlObject.yy = yy;
				
				
        ds_grid_set(grid, xx, yy, [num, locX, locY, locZ]);
				
        num++;
    }
}