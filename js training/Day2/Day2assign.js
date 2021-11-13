const MAX_VALID_YR = 9999;
const MIN_VALID_YR = 1800;

function isLeap(year)
{

	return (((year % 4 == 0) &&
			(year % 100 != 0)) ||
			(year % 400 == 0));
}


function isValidDate(d, m, y)
{

	if (y > MAX_VALID_YR ||
		y < MIN_VALID_YR)
		return false;
		
	if (m < 1 || m > 12)
		return false;
	if (d < 1 || d > 31)
		return false;

	// Handle February month
	// with leap year
	if (m == 2)
	{
		if (isLeap(y))
			return (d <= 29);
		else
			return (d <= 28);
	}

	if (m == 4 || m == 6 ||
		m == 9 || m == 11)
		return (d <= 30);

	return true;
}

isValidDate(30, 2, 2000)?console.log("valid date"):console.log("invalid date");
