
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (248,771)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(248)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(7171);
    ref.push(7171);

//len_list: 1
//==============================


//==============================
    submit.push(3856);
    ref.push(3856);

//len_list: 2
//==============================


//==============================
    submit.push(4945);
    ref.push(4945);

//len_list: 3
//==============================


//==============================
    submit.push(6690);
    ref.push(6690);

//len_list: 4
//==============================


//==============================
    submit.push(3939);
    ref.push(3939);

//len_list: 5
//==============================


//==============================
    submit.push(4411);
    ref.push(4411);

//len_list: 6
//==============================


//==============================
    submit.push(4035);
    ref.push(4035);

//len_list: 7
//==============================


//==============================
    submit.push(2792);
    ref.push(2792);

//len_list: 8
//==============================


//==============================
    submit.push(8858);
    ref.push(8858);

//len_list: 9
//==============================


//==============================
    submit.push(5856);
    ref.push(5856);

//len_list: 10
//==============================


//==============================
    submit.push(1634);
    ref.push(1634);

//len_list: 11
//==============================


//==============================
    submit.push(1980);
    ref.push(1980);

//len_list: 12
//==============================


//==============================
    submit.push(2705);
    ref.push(2705);

//len_list: 13
//==============================


//==============================
    submit.push(6551);
    ref.push(6551);

//len_list: 14
//==============================


//==============================
    submit.push(4432);
    ref.push(4432);

//len_list: 15
//==============================


//==============================
    submit.push(7594);
    ref.push(7594);

//len_list: 16
//==============================


//==============================
    submit.push(1902);
    ref.push(1902);

//len_list: 17
//==============================


//==============================
    submit.push(6521);
    ref.push(6521);

//len_list: 18
//==============================


//==============================
    submit.push(9881);
    ref.push(9881);

//len_list: 19
//==============================


//==============================
    submit.push(4308);
    ref.push(4308);

//len_list: 20
//==============================


//==============================
    submit.push(4001);
    ref.push(4001);

//len_list: 21
//==============================


//==============================
    submit.push(1448);
    ref.push(1448);

//len_list: 22
//==============================


//==============================
    submit.push(7523);
    ref.push(7523);

//len_list: 23
//==============================


//==============================
    submit.push(1035);
    ref.push(1035);

//len_list: 24
//==============================


//==============================
    submit.push(6984);
    ref.push(6984);

//len_list: 25
//==============================


//==============================
    submit.push(133);
    ref.push(133);

//len_list: 26
//==============================


//==============================
    submit.push(7583);
    ref.push(7583);

//len_list: 27
//==============================


//==============================
    submit.push(5802);
    ref.push(5802);

//len_list: 28
//==============================


//==============================
    submit.push(5022);
    ref.push(5022);

//len_list: 29
//==============================


//==============================
    submit.push(8251);
    ref.push(8251);

//len_list: 30
//==============================


//==============================
    submit.push(4418);
    ref.push(4418);

//len_list: 31
//==============================


//==============================
    submit.push(7515);
    ref.push(7515);

//len_list: 32
//==============================


//==============================
    submit.push(4219);
    ref.push(4219);

//len_list: 33
//==============================


//==============================
    submit.push(4594);
    ref.push(4594);

//len_list: 34
//==============================


//==============================
    submit.push(5965);
    ref.push(5965);

//len_list: 35
//==============================


//==============================
    submit.push(3874);
    ref.push(3874);

//len_list: 36
//==============================


//==============================
    submit.push(1221);
    ref.push(1221);

//len_list: 37
//==============================


//==============================
    submit.push(3772);
    ref.push(3772);

//len_list: 38
//==============================


//==============================
    submit.push(7344);
    ref.push(7344);

//len_list: 39
//==============================


//==============================
    submit.push(1237);
    ref.push(1237);

//len_list: 40
//==============================


//==============================
    submit.push(274);
    ref.push(274);

//len_list: 41
//==============================


//==============================
    submit.push(4723);
    ref.push(4723);

//len_list: 42
//==============================


//==============================
    submit.push(343);
    ref.push(343);

//len_list: 43
//==============================


//==============================
    submit.push(8524);
    ref.push(8524);

//len_list: 44
//==============================


//==============================
    submit.push(1986);
    ref.push(1986);

//len_list: 45
//==============================


//==============================
    submit.push(9536);
    ref.push(9536);

//len_list: 46
//==============================


//==============================
    submit.push(4414);
    ref.push(4414);

//len_list: 47
//==============================


//==============================
    submit.push(9108);
    ref.push(9108);

//len_list: 48
//==============================


//==============================
    submit.push(9637);
    ref.push(9637);

//len_list: 49
//==============================


//==============================
    submit.push(1896);
    ref.push(1896);

//len_list: 50
//==============================


//==============================
    submit.push(1194);
    ref.push(1194);

//len_list: 51
//==============================


//==============================
    submit.push(8062);
    ref.push(8062);

//len_list: 52
//==============================


//==============================
    submit.push(5144);
    ref.push(5144);

//len_list: 53
//==============================


//==============================
    submit.push(3325);
    ref.push(3325);

//len_list: 54
//==============================


//==============================
    submit.push(6577);
    ref.push(6577);

//len_list: 55
//==============================


//==============================
    submit.push(4297);
    ref.push(4297);

//len_list: 56
//==============================


//==============================
    submit.push(9880);
    ref.push(9880);

//len_list: 57
//==============================


//==============================
    submit.push(4130);
    ref.push(4130);

//len_list: 58
//==============================


//==============================
    submit.push(4999);
    ref.push(4999);

//len_list: 59
//==============================


//==============================
    submit.push(2391);
    ref.push(2391);

//len_list: 60
//==============================


//==============================
    submit.push(5722);
    ref.push(5722);

//len_list: 61
//==============================


//==============================
    submit.push(1810);
    ref.push(1810);

//len_list: 62
//==============================


//==============================
    submit.push(8437);
    ref.push(8437);

//len_list: 63
//==============================


//==============================
    submit.push(2774);
    ref.push(2774);

//len_list: 64
//==============================


//==============================
    submit.push(948);
    ref.push(948);

//len_list: 65
//==============================


//==============================
    submit.push(4474);
    ref.push(4474);

//len_list: 66
//==============================


//==============================
    submit.push(4225);
    ref.push(4225);

//len_list: 67
//==============================


//==============================
    submit.push(7417);
    ref.push(7417);

//len_list: 68
//==============================


//==============================
    submit.push(3781);
    ref.push(3781);

//len_list: 69
//==============================


//==============================
    submit.push(5784);
    ref.push(5784);

//len_list: 70
//==============================


//==============================
    submit.push(23);
    ref.push(23);

//len_list: 71
//==============================


//==============================
    submit.push(3804);
    ref.push(3804);

//len_list: 72
//==============================


//==============================
    submit.push(7180);
    ref.push(7180);

//len_list: 73
//==============================


//==============================
    submit.push(8747);
    ref.push(8747);

//len_list: 74
//==============================


//==============================
    submit.push(5523);
    ref.push(5523);

//len_list: 75
//==============================


//==============================
    submit.push(2277);
    ref.push(2277);

//len_list: 76
//==============================


//==============================
    submit.push(9087);
    ref.push(9087);

//len_list: 77
//==============================


//==============================
    submit.push(6266);
    ref.push(6266);

//len_list: 78
//==============================


//==============================
    submit.push(2291);
    ref.push(2291);

//len_list: 79
//==============================


//==============================
    submit.push(6103);
    ref.push(6103);

//len_list: 80
//==============================


//==============================
    submit.push(5586);
    ref.push(5586);

//len_list: 81
//==============================


//==============================
    submit.push(3748);
    ref.push(3748);

//len_list: 82
//==============================


//==============================
    submit.push(5533);
    ref.push(5533);

//len_list: 83
//==============================


//==============================
    submit.push(6463);
    ref.push(6463);

//len_list: 84
//==============================


//==============================
    submit.push(4981);
    ref.push(4981);

//len_list: 85
//==============================


//==============================
    submit.push(5415);
    ref.push(5415);

//len_list: 86
//==============================


//==============================
    submit.push(6168);
    ref.push(6168);

//len_list: 87
//==============================


//==============================
    submit.push(5420);
    ref.push(5420);

//len_list: 88
//==============================


//==============================
    submit.push(9228);
    ref.push(9228);

//len_list: 89
//==============================


//==============================
    submit.push(9428);
    ref.push(9428);

//len_list: 90
//==============================


//==============================
    submit.push(9132);
    ref.push(9132);

//len_list: 91
//==============================


//==============================
    submit.push(8416);
    ref.push(8416);

//len_list: 92
//==============================


//==============================
    submit.push(1743);
    ref.push(1743);

//len_list: 93
//==============================


//==============================
    submit.push(7029);
    ref.push(7029);

//len_list: 94
//==============================


//==============================
    submit.push(3384);
    ref.push(3384);

//len_list: 95
//==============================


//==============================
    submit.push(4676);
    ref.push(4676);

//len_list: 96
//==============================


//==============================
    submit.push(5402);
    ref.push(5402);

//len_list: 97
//==============================


//==============================
    submit.push(8213);
    ref.push(8213);

//len_list: 98
//==============================


//==============================
    submit.push(8006);
    ref.push(8006);

//len_list: 99
//==============================


//==============================
    submit.push(3016);
    ref.push(3016);

//len_list: 100
//==============================


//==============================
    submit.push(8562);
    ref.push(8562);

//len_list: 101
//==============================


//==============================
    submit.push(1522);
    ref.push(1522);

//len_list: 102
//==============================


//==============================
    submit.push(6199);
    ref.push(6199);

//len_list: 103
//==============================


//==============================
    submit.push(657);
    ref.push(657);

//len_list: 104
//==============================


//==============================
    submit.push(5675);
    ref.push(5675);

//len_list: 105
//==============================


//==============================
    submit.push(9592);
    ref.push(9592);

//len_list: 106
//==============================


//==============================
    submit.push(974);
    ref.push(974);

//len_list: 107
//==============================


//==============================
    submit.push(686);
    ref.push(686);

//len_list: 108
//==============================


//==============================
    submit.push(6490);
    ref.push(6490);

//len_list: 109
//==============================


//==============================
    submit.push(4845);
    ref.push(4845);

//len_list: 110
//==============================


//==============================
    submit.push(1836);
    ref.push(1836);

//len_list: 111
//==============================


//==============================
    submit.push(6448);
    ref.push(6448);

//len_list: 112
//==============================


//==============================
    submit.push(9611);
    ref.push(9611);

//len_list: 113
//==============================


//==============================
    submit.push(3695);
    ref.push(3695);

//len_list: 114
//==============================


//==============================
    submit.push(3297);
    ref.push(3297);

//len_list: 115
//==============================


//==============================
    submit.push(422);
    ref.push(422);

//len_list: 116
//==============================


//==============================
    submit.push(3151);
    ref.push(3151);

//len_list: 117
//==============================


//==============================
    submit.push(4726);
    ref.push(4726);

//len_list: 118
//==============================


//==============================
    submit.push(5488);
    ref.push(5488);

//len_list: 119
//==============================


//==============================
    submit.push(7870);
    ref.push(7870);

//len_list: 120
//==============================


//==============================
    submit.push(4769);
    ref.push(4769);

//len_list: 121
//==============================


//==============================
    submit.push(7415);
    ref.push(7415);

//len_list: 122
//==============================


//==============================
    submit.push(9524);
    ref.push(9524);

//len_list: 123
//==============================


//==============================
    submit.push(3335);
    ref.push(3335);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(8198);
    ref.push(8198);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(5830);
    ref.push(5830);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(630);
    ref.push(630);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(9831);
    ref.push(9831);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(1390);
    ref.push(1390);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(5740);
    ref.push(5740);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(5033);
    ref.push(5033);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(5825);
    ref.push(5825);

//len_list: 126
//==============================


//==============================
    submit.push(2116);
    ref.push(2116);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(4187);
    ref.push(4187);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(400);
    ref.push(400);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.push(392);
    ref.push(392);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.push(9729);
    ref.push(9729);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(9474);
    ref.push(9474);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.push(3488);
    ref.push(3488);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.push(4287);
    ref.push(4287);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.push(583);
    ref.push(583);

//len_list: 124
//==============================


//==============================
    submit.push(6002);
    ref.push(6002);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(8763);
    ref.push(8763);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(5451);
    ref.push(5451);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(6719);
    ref.push(6719);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(8240);
    ref.push(8240);

//len_list: 127
//==============================


//==============================
    submit.push(2441);
    ref.push(2441);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(4005);
    ref.push(4005);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(40);
    ref.push(40);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(9618);
    ref.push(9618);

//len_list: 130
//==============================


//==============================
    submit.push(4488);
    ref.push(4488);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(1302);
    ref.push(1302);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(995);
    ref.push(995);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(384);
    ref.push(384);

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(3748);
    ref.push(3748);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(2966);
    ref.push(2966);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(4902);
    ref.push(4902);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(88);
    ref.push(88);

//len_list: 131
//==============================


//==============================
    submit.push(4107);
    ref.push(4107);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(6227);
    ref.push(6227);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(7548);
    ref.push(7548);

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(4992);
    ref.push(4992);

//len_list: 134
//==============================


//==============================
    submit.push(7718);
    ref.push(7718);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(4430);
    ref.push(4430);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(4181);
    ref.push(4181);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(6981);
    ref.push(6981);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    submit.push(9990);
    ref.push(9990);

//len_list: 134
//==============================


//==============================
    submit.push(1653);
    ref.push(1653);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(2529);
    ref.push(2529);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(2766);
    ref.push(2766);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(3543);
    ref.push(3543);

//len_list: 137
//==============================


//==============================
    submit.push(9584);
    ref.push(9584);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(8510);
    ref.push(8510);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.push(6043);
    ref.push(6043);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(3622);
    ref.push(3622);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(8190);
    ref.push(8190);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(2618);
    ref.push(2618);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(141);
    ref.push(141);

//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    submit.push(7964);
    ref.push(7964);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(2205);
    ref.push(2205);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(9968);
    ref.push(9968);

//len_list: 138
//==============================


//==============================
    submit.push(9710);
    ref.push(9710);

//len_list: 139
//==============================


//==============================
    submit.push(3072);
    ref.push(3072);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3918);
    ref.push(3918);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(8793);
    ref.push(8793);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(5211);
    ref.push(5211);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(6886);
    ref.push(6886);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(524);
    ref.push(524);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(9581);
    ref.push(9581);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(3204);
    ref.push(3204);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(5668);
    ref.push(5668);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(8139);
    ref.push(8139);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(9454);
    ref.push(9454);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(3388);
    ref.push(3388);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(1677);
    ref.push(1677);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(7929);
    ref.push(7929);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(1743);
    ref.push(1743);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(217);
    ref.push(217);

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(1159);
    ref.push(1159);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(3361);
    ref.push(3361);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(9204);
    ref.push(9204);

//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(735);
    ref.push(735);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(6418);
    ref.push(6418);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(4479);
    ref.push(4479);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(2286);
    ref.push(2286);

//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(9933);
    ref.push(9933);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(1984);
    ref.push(1984);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(5581);
    ref.push(5581);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(5973);
    ref.push(5973);

//len_list: 149
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.push(9129);
    ref.push(9129);

//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(4069);
    ref.push(4069);

//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(5541);
    ref.push(5541);

//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    submit.push(7201);
    ref.push(7201);

//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    submit.push(2804);
    ref.push(2804);

//len_list: 149
//==============================


//==============================
    submit.push(7346);
    ref.push(7346);

//len_list: 150
//==============================


//==============================
    submit.push(299);
    ref.push(299);

//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(5022);
    ref.push(5022);

//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(4609);
    ref.push(4609);

//len_list: 152
//==============================


//==============================
    submit.push(9853);
    ref.push(9853);

//len_list: 153
//==============================


//==============================
    submit.push(7836);
    ref.push(7836);

//len_list: 154
//==============================


//==============================
    submit.push(3227);
    ref.push(3227);

//len_list: 155
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 155
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 155
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 155
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 155
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 153
//==============================


//==============================
    submit.push(4304);
    ref.push(4304);

//len_list: 154
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 153
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    submit.push(9400);
    ref.push(9400);

//len_list: 154
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(8177);
    ref.push(8177);

//len_list: 152
//==============================


//==============================
    submit.push(2691);
    ref.push(2691);

//len_list: 153
//==============================


//==============================
    submit.push(4357);
    ref.push(4357);

//len_list: 154
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 153
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.push(4549);
    ref.push(4549);

//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(7622);
    ref.push(7622);

//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(7337);
    ref.push(7337);

//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(4247);
    ref.push(4247);

//len_list: 151
//==============================


//==============================
    submit.push(6218);
    ref.push(6218);

//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(6906);
    ref.push(6906);

//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(4769);
    ref.push(4769);

//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.push(6529);
    ref.push(6529);

//len_list: 150
//==============================


//==============================
    submit.push(3169);
    ref.push(3169);

//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(2970);
    ref.push(2970);

//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    submit.push(2820);
    ref.push(2820);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(7225);
    ref.push(7225);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    submit.push(5546);
    ref.push(5546);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(9363);
    ref.push(9363);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.push(8039);
    ref.push(8039);

//len_list: 153
//==============================


//==============================
    submit.push(6761);
    ref.push(6761);

//len_list: 154
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.push(1378);
    ref.push(1378);

//len_list: 155
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 155
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 155
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 153
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 152
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    submit.push(1193);
    ref.push(1193);

//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(3609);
    ref.push(3609);

//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    submit.push(5200);
    ref.push(5200);

//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(552);
    ref.push(552);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(5503);
    ref.push(5503);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(9682);
    ref.push(9682);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(6905);
    ref.push(6905);

//len_list: 143
//==============================


//==============================
    submit.push(1453);
    ref.push(1453);

//len_list: 144
//==============================


//==============================
    submit.push(1422);
    ref.push(1422);

//len_list: 145
//==============================


//==============================
    submit.push(9190);
    ref.push(9190);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6306);
    ref.push(6306);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6467);
    ref.push(6467);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(9651);
    ref.push(9651);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(4655);
    ref.push(4655);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(3815);
    ref.push(3815);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(7123);
    ref.push(7123);

//len_list: 148
//==============================


//==============================
    submit.push(9075);
    ref.push(9075);

//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    submit.push(5689);
    ref.push(5689);

//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    submit.push(2581);
    ref.push(2581);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    submit.push(1215);
    ref.push(1215);

//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(236);
    ref.push(236);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


}
