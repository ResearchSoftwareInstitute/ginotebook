function getPntsConvexHull(pnts_array)
{
	var hullUpperPnts = [], hullLowerPnts = [];
	var total_pnts = pnts_array.length;
	SortPnts(pnts_array);
	hullUpperPnts.push(pnts_array[0]);
	hullUpperPnts.push(pnts_array[1]);
	hullLowerPnts.push(pnts_array[total_pnts - 1]);
	hullLowerPnts.push(pnts_array[total_pnts - 2]);
	for(var i = 2; i < total_pnts; i++)
	{
		var last_idx = hullUpperPnts.length - 1;
		while( 
		hullUpperPnts.length > 1 && 
		((hullUpperPnts[last_idx].lng - hullUpperPnts[last_idx-1].lng)*(pnts_array[i].lat - hullUpperPnts[last_idx].lat)
		-(pnts_array[i].lng - hullUpperPnts[last_idx].lng)*(hullUpperPnts[last_idx].lat - hullUpperPnts[last_idx-1].lat)>0)
		)
		{
			hullUpperPnts.pop();
			last_idx = last_idx - 1;
		}
		// if there are more than 1 points in the array and adding a new point will make a right turn, then delete middle point
		// in the turn, which is essentially the last point in hullUpperPnts
		hullUpperPnts.push(pnts_array[i]);		
	}
	//get the upper hullUpperPnts
	
	for(var i = total_pnts - 3; i >= 0; i--)
	{
		var last_idx = hullLowerPnts.length - 1;
		while(
		hullLowerPnts.length > 1 &&
		((hullLowerPnts[last_idx].lng - hullLowerPnts[last_idx-1].lng)*(pnts_array[i].lat - hullLowerPnts[last_idx].lat)
		- (pnts_array[i].lng - hullLowerPnts[last_idx].lng)*(hullLowerPnts[last_idx].lat - hullLowerPnts[last_idx-1].lat)>0)
		)
		{
			hullLowerPnts.pop();
			last_idx--;
		}
		hullLowerPnts.push(pnts_array[i]);
	}
	//get the lower hull points
	
	hullUpperPnts.pop();
	Hull = hullUpperPnts.concat(hullLowerPnts);
	return Hull;
	//merge the upper and lower hulls
}


function SortPnts(pnts_array)
{
	QuickSortPnts(pnts_array, 0, pnts_array.length - 1);
}

function QuickSortPnts(pnts_array, prior, rear){
	if(prior < rear)
	{
		var flag = partitionArr(pnts_array, prior, rear);
		QuickSortPnts(pnts_array, prior, flag - 1);
		QuickSortPnts(pnts_array, flag + 1, rear);
	}
}

function partitionArr(pnts_array, prior, rear){
	var p = prior - 1;
	for(var r = prior; r < rear; r++)
	{
		if(pnts_array[r].lng < pnts_array[rear].lng)
		{
			p = p + 1;
			var temp = pnts_array[r];
			pnts_array[r] = pnts_array[p];
			pnts_array[p] = temp;
		}
	}
	var temp = pnts_array[rear];
	pnts_array[rear] = pnts_array[p + 1];
	pnts_array[p + 1] = temp;
	return p + 1;
}