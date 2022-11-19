function sortTable(n) {
	var table, rows, switching, o, x, y, shouldSwitch, dir, switchcount = 0;
		table = document.getElementById("inventory");
		switching = true;
		dir = 'asc';
	
	while (switching) {
		switching = false;
		rows = table.getElementsByTagName('TR');
		
		for (o = 1; o < (rows.length - 1); o++){
			shouldSwitch = false;
			x = rows[o].getElementsByTagName('TD')[n];
			y = rows[o+1].getElementsByTagName('TD')[n];
			
			if (dir == 'asc') {
				if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
					shouldSwitch = true;
					break;
				}
			}else if (dir == 'desc'){
				if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
					shouldSwitch = true;
					break;
				}
			}
		}
		
		if (shouldSwitch) {
			rows[o].parentNode.insertBefore(rows[o+1], rows[o]);
			switching = true;
			switchcount ++;
		}else {
			if (switchcount == 0 && dir == 'asc') {
				dir = 'desc';
				switching = true;
			}
		}
	}
}