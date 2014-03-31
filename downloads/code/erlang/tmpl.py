#    case lists:nth(1, M) + lists:nth(2, M) + lists:nth(3, M) + lists:nth(10, M) + lists:nth(11, M) + lists:nth(12, M) + lists:nth(19, M) + lists:nth(20, M) + lists:nth(21, M) of
#    case lists:nth(28, M) + lists:nth(29, M) + lists:nth(30, M) + lists:nth(37, M) + lists:nth(38, M) + lists:nth(39, M) + lists:nth(46, M) + lists:nth(47, M) + lists:nth(48, M) of
#    case lists:nth(55, M) + lists:nth(56, M) + lists:nth(57, M) + lists:nth(64, M) + lists:nth(65, M) + lists:nth(66, M) + lists:nth(73, M) + lists:nth(74, M) + lists:nth(75, M) of
#    case lists:nth(4, M) + lists:nth(5, M) + lists:nth(6, M) + lists:nth(13, M) + lists:nth(14, M) + lists:nth(15, M) + lists:nth(22, M) + lists:nth(23, M) + lists:nth(24, M) of
#    case lists:nth(31, M) + lists:nth(32, M) + lists:nth(33, M) + lists:nth(40, M) + lists:nth(41, M) + lists:nth(42, M) + lists:nth(49, M) + lists:nth(50, M) + lists:nth(51, M) of
#    case lists:nth(58, M) + lists:nth(59, M) + lists:nth(60, M) + lists:nth(67, M) + lists:nth(68, M) + lists:nth(69, M) + lists:nth(76, M) + lists:nth(77, M) + lists:nth(78, M) of
#    case lists:nth(7, M) + lists:nth(8, M) + lists:nth(9, M) + lists:nth(16, M) + lists:nth(17, M) + lists:nth(18, M) + lists:nth(25, M) + lists:nth(26, M) + lists:nth(27, M) of
#    case lists:nth(34, M) + lists:nth(35, M) + lists:nth(36, M) + lists:nth(43, M) + lists:nth(44, M) + lists:nth(45, M) + lists:nth(52, M) + lists:nth(53, M) + lists:nth(54, M) of
#    case lists:nth(61, M) + lists:nth(62, M) + lists:nth(63, M) + lists:nth(70, M) + lists:nth(71, M) + lists:nth(72, M) + lists:nth(79, M) + lists:nth(80, M) + lists:nth(81, M) of
#
s1 = [  1 , 2 , 3 , 10 , 11, 12, 19, 20, 21] 
s2=  [  28 , 29 , 30 , 37 , 38, 39, 46, 47, 48] 
s3=  [  55 , 56 , 57 , 64 , 65, 66 ,73, 74, 75]
s4=  [  4 , 5 , 6 , 13 , 14 , 15,  22,  23,  24] 
s5=  [  31 , 32 , 33 , 40 , 41 , 42 , 49 , 50 , 51] 
s6=  [  58 , 59 , 60 , 67 , 68 , 69,  76 , 77,  78]
s7=  [  7 , 8 , 9 , 16 , 17 , 18,  25,  26,  27 ]
s8=  [  34 , 35 , 36 , 43 , 44,  45 , 52,  53 , 54]
s9=  [  61 , 62 , 63 , 70 , 71 , 72,  79 , 80,  81]


s = [s1, s2, s3, s4, s5, s6, s7,s8, s9]

for squ in range(1, 10):
    lst = s[squ-1]
    breakdown = []
    for i in range(1, 82):
        prefix = "N" if i in lst else "_N"
        breakdown.append("%s%d" % (prefix, i) )

    guard = " + ".join(["N%d" % l for l in lst]) + " == 45 andalso\n"
    guard += "andalso ".join(["N%d /= 0 " % l for l in lst])

    TMPL="""solve(_Seed, EndPos, [%s]= Ans, [], _, SideLen, _Steps) when
            %s
    ->
    """ % (", ".join(breakdown), guard)

    print TMPL


