while true
do
    curl "http://35.224.108.169/"
    curl "http://35.224.108.169/about/"
    curl "http://35.224.108.169/submit/"
    sleep 2;
done

#ab -c 20 -n 100 https://aquan-196304.appspot.com/esProducts?term=dur