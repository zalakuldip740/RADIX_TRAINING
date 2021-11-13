

        -- IN SQLITE,DATE FUNCTION DOES NOT GIVE DATE IN STRING FORMAT,SO I TRIED TO WRITE QUERY TO PRINT DATETIME IN STRING FORMAT	
		
		
	-- 1.  PRINT TIME WITH AM/PM 
	
	      SELECT strftime('%H:%M ','now') ||
	   CASE 
	   WHEN strftime('%H','now')>=12 THEN 'PM'
	   ELSE 'AM'
	   END AS TIME;                                  -- O/P :  21:33 PM
	   
	   
	-- 2.  PRINT DATE IN "SEP 26,2021" FORMAT
	
	
	  SELECT CASE strftime('%m','now')
	   WHEN '01'THEN ' Jan'
	   WHEN '02'THEN ' Feb'
	   WHEN '03'THEN ' Mar'
	   WHEN '04'THEN ' Apr'
	   WHEN '05'THEN ' May'
	   WHEN '06'THEN ' Jun'
	   WHEN '07'THEN ' Jul'
	   WHEN '08'THEN ' Aug'
	   WHEN '09'THEN ' Sep'
	   WHEN '10'THEN ' Oct'
	   WHEN '11'THEN ' Nov'
	   ELSE ' Dec'
	   END ||
	   strftime(' %d,%Y','now')
	  AS AGE;                            --   Aug 26,2021
	  
	   
	   
	   
  -- 3.  
  
  
	   SELECT strftime('%H:%M ','now') ||
	   CASE 
	   WHEN strftime('%H','now')>=12 THEN 'PM'
	   ELSE 'AM'
	   END || 
	   CASE strftime('%m','now')
	   WHEN '01'THEN ' Jan'
	   WHEN '02'THEN ' Feb'
	   WHEN '03'THEN ' Mar'
	   WHEN '04'THEN ' Apr'
	   WHEN '05'THEN ' May'
	   WHEN '06'THEN ' Jun'
	   WHEN '07'THEN ' Jul'
	   WHEN '08'THEN ' Aug'
	   WHEN '09'THEN ' Sep'
	   WHEN '10'THEN ' Oct'
	   WHEN '11'THEN ' Nov'
	   ELSE ' Dec'
	   END ||
	   strftime(' %d,%Y','now')
	  AS AGE;                            --  21:40 PM Aug 26,2021
	  
	  
	  
	  