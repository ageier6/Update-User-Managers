$ADUsers = Import-csv '\\fileserver\User_folders\alexg\My Documents\Scripts\Powershell\Users.csv'

#Loop through each row containing user details in the CSV file 
foreach ($User in $ADUsers)
{
	#Read user data from each field in each row and assign the data to a variable as below
    $Username        = $User.username
	$Manager       = $User.manager

    Set-ADUser -Identity $Username -Manager $Manager
  } 