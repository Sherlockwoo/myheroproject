contains() {
    string="$1"
    substring="$2"
    if test "${string#*$substring}" != "$string"
    then
        return 0    # $substring is in $string
    else
        return 1    # $substring is not in $string
    fi
}

while true; do
    result=$(curl -s 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,en-US;q=0.8,en;q=0.6,zh;q=0.4' -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.82 Safari/537.36' -H 'x-chrome-uma-enabled: 1' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: gv=SAVF9WWIZWflNsR85-DxCFLJVqjTHjdBzLoCWjFYMcQrCatxo9zND2EhDQk2RgaA-5mcFQ.; GV_NR=1; HSID=AKH38d7br7fLKm2d1; SSID=AnQhrCz_dHCAEAlHc; APISID=XQshVatDre6oAu4h/ACXAgrXcEi_L7cBkO; SAPISID=oYkLohdjBYnng5f2/AhZUR1EOXPfg17R6l; SID=SAVF9Rn7O6CEdKZ6i-Tx8JITgxZUcKo297oEZlb96sW_hw2J6WZlCQRb89_Pm8VXXjRK8w.; S=billing-ui-v3=vrHJPWAkXOVGZQKezzWlTiIuLGojY066:billing-ui-v3-efe=vrHJPWAkXOVGZQKezzWlTiIuLGojY066:grandcentral=QOpTdCYyZNJwdIOcFuqm_Pnc07MoQ07u; _ga=GA1.1.511788717.1507982720; _gid=GA1.1.1846195743.1508651732; NID=114=S6weSaelEBTT1yUC_pNgF6cHPflKzvJMc3pohSffbdvDkS_6RU0MHVkOX552c6Na9DbLWhFkJgj2VLeZr2QEBCM1Kv1jVRLCvIeClteAO-1HFa7-CkCdXd5Q3PGlCUkgw-S-QzILNiE9KqSnfwm7x1hzsVmdOi2taDt-qENF2L52YWLmQJ39plhI1lATt63pEyTCwfY8Bs3zfO7-sRFmLcaUKubqS6sqzCdTUnon2DRQxfwlh1uTH8fxUQi2-njfC6xQ545WLfio_isn; 1P_JAR=2017-10-23-12; SIDCC=AE4kn7_YX6LSc63xREEm7LwDMZmuciI3f4us0L_OphUHZDigtWm_6TileRePtVvQq98gr_H3THc8ppxWuAie' -H 'x-client-data: CJS2yQEIpbbJAQjEtskBCPqcygEIqZ3KAQ==' --data 'sid=3&mid=6&req=%5Bnull%2C%22%2B13479165084%22%2Cfalse%5D&_rnr_se=6aGm7yQ4ZgpVWlBLsjdGCZm7al8%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1.5
done
