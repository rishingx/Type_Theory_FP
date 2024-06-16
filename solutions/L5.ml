type nat = Z | S of nat;;

let zero = Z;;
let one = S Z;;
let two = S (S Z);;
let three = S (S (S Z));;

let nonzero n = match n with
    Z   -> false
|   S _ -> true
;;

let rec nat2int n = match n with
    Z   -> 0
|   S x -> 1 + (nat2int x)
;;

let rec addnat m n = match m with
    Z   -> n
|   S x -> S (addnat x n)
;;

let rec multnat m n = match m with
    Z   -> Z
|   S x -> addnat n (multnat x n)
;;

let rec expnat m n = match n with
    Z   -> (S Z)
|   S x -> multnat m (expnat m x)
;;

let rec length l = match l with
    [ ]     -> 0
|   _ :: xs -> 1 + (length xs)
;;

let rec append l1 l2 = match l1 with
    [ ]     -> l2
|   x :: xs -> x :: (append xs l2)
;;

let rec rev1 s = match s with
    [ ]     -> [ ]
|   x :: xs -> (rev1 xs) @ [x]
;;

let rev s =
    let rec rev2 s1 s2 = match s1 with
        [ ]     -> s2
    |   x :: xs -> rev2 xs (x :: s2)
    in
        rev2 s [ ]
;;
