for (var yy = 0; yy < vSize; ++yy) {
	for (var xx = 0; xx < hSize; ++xx) {
			
		var cell1 = ds_grid_get(grid,xx,yy);
		var x1 = cell1[1];
		var y1 = cell1[2]+cell1[3];
		
		//draw_set_color(c_gray);
		//draw_circle(x1, y1, 3,true);


		if (xx + 1 < hSize && yy + 1 < vSize)
		{
		    var cell2 = ds_grid_get(grid, xx+1, yy);
		    var x2 = cell2[1];
		    var y2 = cell2[2] + cell2[3];
		    var cell3, cell4;
		    var x3, y3, x4, y4;

		    if ((yy & 1) == 0) {
		        cell3 = ds_grid_get(grid, xx,     yy+1);
		        cell4 = ds_grid_get(grid, xx+1,   yy+1);
		    } else {
		        cell3 = ds_grid_get(grid, xx+1,   yy+1);
		        var cx4 = (xx+2 < hSize) ? xx+2 : xx+1;
		        cell4 = ds_grid_get(grid, cx4,    yy+1);
		    }

		    x3 = cell3[1];
		    y3 = cell3[2] + cell3[3];

		    x4 = cell4[1];
		    y4 = cell4[2] + cell4[3];


				var c1 = make_color_hsv(105, 255, 88-cell1[3]);
				var c2 = make_color_hsv(105, 255, 88-cell2[3]);
				var c3 = make_color_hsv(105, 255, 88-cell3[3]);
				var c4 = make_color_hsv(105, 255, 88-cell4[3]);


				// triangle A-B-C
				draw_triangle_colour(
				    x1, y1,
				    x2, y2,
				    x3, y3,
				    c1, c2, c3,
				    false
				);

				// triangle B-D-C
				draw_triangle_colour(
				    x2, y2,
				    x4, y4,
				    x3, y3,
				    c2, c4, c3,
				    false
				);
		}

	}
}