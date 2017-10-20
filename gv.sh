#!/bin/bash
#请注意使用UTF-8 without BOM格式，否则可能会出错
#脚本 by Sunbread
########## Setting ##########
threads=16 # 根据自身情况调整，若不会调整则按默认值即可
########## Code ##########
echo 伪多线程脚本 by Sunbread
for((i=0;i<$threads;++i));do while :;do
    curl 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,en-US;q=0.8,en;q=0.6,zh;q=0.4' -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.82 Safari/537.36' -H 'x-chrome-uma-enabled: 1' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: gv=SAVF9WWIZWflNsR85-DxCFLJVqjTHjdBzLoCWjFYMcQrCatxo9zND2EhDQk2RgaA-5mcFQ.; GV_NR=1; HSID=AKH38d7br7fLKm2d1; SSID=AnQhrCz_dHCAEAlHc; APISID=XQshVatDre6oAu4h/ACXAgrXcEi_L7cBkO; SAPISID=oYkLohdjBYnng5f2/AhZUR1EOXPfg17R6l; SID=SAVF9Rn7O6CEdKZ6i-Tx8JITgxZUcKo297oEZlb96sW_hw2J6WZlCQRb89_Pm8VXXjRK8w.; S=billing-ui-v3=1t_1nprDR-HRkmYPrAgf7OR7XxiRSoJj:billing-ui-v3-efe=1t_1nprDR-HRkmYPrAgf7OR7XxiRSoJj:grandcentral=Sq8Bv1aQUFLybSQEikCO8MA2deADQKY_; NID=114=IOlvW_mfT9AaHWpwScSr0iFQpt-XI4XbbYiao3fhakrTkJc2zVSn-32wlDQVSGlJekMZ7b4aqDnpGDniczQ6_GrthwK1fEUaUvhbr8xE01b01WOKxz1JjFjzVym914b860bZnrtMT5UlLbZonsRYBiXKkBMHOZPYzZjYx2SYDsvRLVZWnPDSXomPBE1WZiabjltKn56BMyTyGZywzhFIAQSiS-l3L3SsUfnAfIpmz8woGolJiptxnBYK4mApXCnuYXW4Y8moMmqaC31p; DV=s2gUr6y6nxhBEE2cXk7VD9WdD6GX89Uh5ZQPhzopagMAAJAarGAY5pHEoQEAACQ2v4PxdfuFawAAAA; _ga=GA1.1.511788717.1507982720; _gid=GA1.1.270193653.1508498149; 1P_JAR=2017-10-20-11; SIDCC=AE4kn7_H_DuGa0M1xqpPvYd4DMcaAP6zjCfJjWEmwcVbv2OXeyQJFeZRHMm68Y37S_Zjm2oJvt0En9wnLuZv' -H 'x-client-data: CJS2yQEIpbbJAQjEtskBCPqcygEIqZ3KAQ==' --data 'sid=3&mid=6&req=%5Bnull%2C%22%2B13479165084%22%2Cfalse%5D&_rnr_se=6aGm7yQ4ZgpVWlBLsjdGCZm7al8%3D' --compressed >/dev/null 2>/dev/null
    # 用刚才的命令替换中括号里的内容（包括两个中括号本身）
done &
done
echo 结束脚本请使用Ctrl+C，使用其它方法可能会出现无法预料的异常，谢谢合作
wait
