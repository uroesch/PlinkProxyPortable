$table1 = @()

$table1 += New-Object PSObject -Property @{ 
  section = 'foobar'
  key     = 'bar'
  value   = 'var1'
}

$table1 += New-Object PSObject -Property @{ 
  section = 'foobar'
  key     = 'foo'
  value   = 'foo1'
}

$table1 += New-Object PSObject -Property @{ 
  section = 'barfoo'
  key     = 'f--'
  value   = 'f123'
}


#Write-Output $table1

# --------------------------------------------------------------------------------------------
$table2 = New-Object system.Data.DataTable 'table'
$table2.columns.add($(New-Object system.Data.DataColumn section,([string]))) 
$table2.columns.add($(New-Object system.Data.DataColumn key,([string]))) 
$table2.columns.add($(New-Object system.Data.DataColumn value,([string]))) 



$row = $table2.NewRow() 
$row.section = 'foobar'
$row.key     = 'bar'
$row.value   = 'var1'
$table2.Rows.Add($row)

$row = $table2.NewRow() 
$row.section = 'foobar'
$row.key     = 'foo'
$row.value   = 'foo1'
$table2.Rows.Add($row)

$row = $table2.NewRow() 
$row.section = 'barfoo'
$row.key     = 'f--'
$row.value   = 'f123'
$table2.Rows.Add($row)

#Write-Output $table2.Rows
Write-Output $table2.Select("section = 'foobar' And key = 'foo'" )
