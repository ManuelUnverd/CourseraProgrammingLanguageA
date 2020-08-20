fun is_older (a : int * int *int, b : int * int *int) =
if #1 a < #1 b andalso
#2 a < #2 b andalso
#3 a < #3 b 
then true
else false;

fun number_in_month(dates: (int*int*int) list , month : int) =
if null dates
then 0
else if #2 (hd(dates)) = month 
then 1 + number_in_month(tl(dates),month)
else 0 + number_in_month(tl(dates),month);

fun number_in_months( dates : (int * int *int) list, months : int list) =
if null months
then 0
else number_in_month (dates, hd(months)) + number_in_months (dates,tl(months));

fun dates_in_month ( dates : (int *int *int) list, month : int ) =
if null dates
then []
else if #2 (hd(dates)) = month
then hd(dates) :: dates_in_month (tl(dates),month)
else dates_in_month (tl(dates),month);

fun dates_in_months ( dates : (int *int *int) list, months : int list ) =
if null months
then []
else dates_in_month(dates, hd(months)) @ dates_in_months (dates,tl(months));

fun get_nth (stringarray : string list, number :int) =
let fun counter (xs: string list, i : int) =
  if number = i
  then hd(xs)
  else counter (  tl (xs),i+1 )
in 
counter( stringarray,1)
end;

fun date_to_string (dates : (int * int * int) ) =
get_nth (["January", "February", "March", "April",
"May", "June", "July", "August", "September", "October", "November", "December"], #2 dates )
^ " " ^ Int.toString(#3 dates) ^ ", " ^ Int.toString(#1 dates) ;

fun number_before_reaching_sum (sum : int, xs : int list ) =
