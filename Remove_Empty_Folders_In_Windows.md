Go to the folder you want in cmd then paste this exactly how it is

for /f "delims=" %i in ('dir /s /b /ad \^\| sort /r') do rd "%i" 2\>NUL
