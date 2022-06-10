#/bin/bash
function method1(){
    sum=0
    for((i=1;i<=$y;i++,i++))
    do
        let "sum=sum+i"
    done
    echo "1 add to n sum is $sum"
}
function method2(){
    sum1=1
    sum2=0
    for((i=1;i<=$y;i++))
    do
        let "sum1=sum1*i"
    done
    echo "1 to n allsum is $sum1"
}
function method3(){
for((i=2;i<$y;i++))
    do
        isprime
        if [ "$?" -eq 0 ]
            then echo -n "$i "
        fi
    done
    echo
}
function isprime(){
    if((i==2))
        then return 0
    elif((i%2==0))
        then
    return 1   
    fi
        bond=$((i/2));flag=0
    for((k=3;k<=bond;k=k+2))
    do
        if((i%k==0));then
            flag=1
            break
        fi
    done
return $flag
}
#主函数 输入x y  如果x为4退出循环
x=0
for((;$x!=4;))
do
    echo ===========================================
    echo "**    （1）计算1到n的奇数之和；       **"
    echo "**    （2）计算1到n的阶乘；           **"
    echo "**    （3）计算1到n的所有素数；       **"
    echo "**    （4）退出程序。                 **"
    echo ==========================================
    echo -n Please enter function select and number:
    read x y
    case $x in
        1) method1 ;;
        2) method2 ;;
        3) method3 ;;
    esac
done