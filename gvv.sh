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
    result=$(curl -s 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,en-US;q=0.8,en;q=0.6,zh;q=0.4' -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.82 Safari/537.36' -H 'x-chrome-uma-enabled: 1' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: GV_NR=1; gv=SAVF9WWIZWflNsR85-DxCFLJVqjTHjdBzLoCWjFYMcQrCatxo9zND2EhDQk2RgaA-5mcFQ.; HSID=AKH38d7br7fLKm2d1; SSID=AnQhrCz_dHCAEAlHc; APISID=XQshVatDre6oAu4h/ACXAgrXcEi_L7cBkO; SAPISID=oYkLohdjBYnng5f2/AhZUR1EOXPfg17R6l; S=billing-ui-v3=CrWbL3-T7gvBF9eAs721xCTpaZ523Cck:billing-ui-v3-efe=CrWbL3-T7gvBF9eAs721xCTpaZ523Cck:grandcentral=iiQt_21AzLPEMVZf7YDxxNDxP_fMQX43; SID=SAVF9Rn7O6CEdKZ6i-Tx8JITgxZUcKo297oEZlb96sW_hw2J6WZlCQRb89_Pm8VXXjRK8w.; _ga=GA1.1.511788717.1507982720; _gid=GA1.1.881961656.1507982720; NID=114=Rvkgs9VtYU2R0L04P_fvjqVDo4ABMi0gyWsA7ofY8HKhy15r14Dox-iUy5PpXr5-2QykVV8JbrOGv2He5Xlk3eVibc_huMRd7yvwj4wK8IvBbaUM7u_HODVue_5tihobjwkq62YpGokPCqAZWxP5ou0YaqcY1icnYGXFOpnCikTkNbJCZM8yLs6F9epfz5i3NqpoEfdJpajryMvynZ_eL20TSMYKE2PvRCDu94LZlBJ-MF7iZ77GsfFUQqsAm3_aOFEiXDjvtg; 1P_JAR=2017-10-14-12; SIDCC=AE4kn79PoNQkppOXwzb6_4Xjp3efcD6IHMiKX3Ni2zFtD8PNKZWSqnMftjnLKxWaypVRLQlOgbXGLSuI_-Lm' -H 'x-client-data: CJS2yQEIpbbJAQjEtskBCPqcygEIqZ3KAQ==' --data 'sid=3&mid=6&req=%5Bnull%2C%22%2B13479165084%22%2Ctrue%2C%22%22%5D&_rnr_se=6aGm7yQ4ZgpVWlBLsjdGCZm7al8%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1.5
done
