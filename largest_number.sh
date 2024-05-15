#shebang
#!/bin/bash
numbers=(3 8 15 6) 
numbers1=(5 7 9 11) 
largest=${numbers[0]} 
largest1=${numbers1[0]}  
for number in ${numbers[@]}; do    
if [[ $number -gt $largest ]]; then
    largest=$number
fi
done
echo "The largest number is $largest"


