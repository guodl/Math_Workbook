cd /d C:\Document\DeLiang\Document\MathNote\Math
copy \\ssms\document\*.*


sqlcmd -S CockleBayPC\SQL -d Math -U SA -P Dell5547 -i Math_Year12_Cambridge_AS_PureMaths.sql -o Math_Year12_Cambridge_AS_PureMaths_.tex


sqlcmd -S CockleBayPC\SQL -d Math -U SA -P Dell5547 -i Math_Year12_Cambridge_AS_Statistics.sql -o Math_Year12_Cambridge_AS_Statistics_.tex

