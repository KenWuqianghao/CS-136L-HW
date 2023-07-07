read num1
read num2
read num3
sum=$(( num1 + num2 ))
diff=$(( num1 - num2 ))

addition() {
    if [[ $sum -eq num3 ]]; then
        echo "Yes"
    else
        echo "No"
    fi
}

subtraction() {
    if [[ $diff -eq num3 ]]; then
        echo "Yes"
    else
        echo "No"
    fi
}

echoerr() { 
   echo "$@" 1>&2;
   exit 4 
}

if [[ "$1" == "a" ]]; then
    addition
elif [[ "$1" == "s" ]]; then
    subtraction
else
    echoerr "Invalid option"
    exit 1
fi
