fun is_older (a : int * int *int, b : int * int *int) =
if #1 a < #1 b andalso
#2 a < #2 b andalso
#3 a < #3 b 
then true
else false;