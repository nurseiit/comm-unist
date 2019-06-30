
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (239,1847)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(239)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(1702);
    ref.push(1702);

//len_list: 1
//==============================


//==============================
    submit.push(9309);
    ref.push(9309);

//len_list: 2
//==============================


//==============================
    submit.push(5837);
    ref.push(5837);

//len_list: 3
//==============================


//==============================
    submit.push(7992);
    ref.push(7992);

//len_list: 4
//==============================


//==============================
    submit.push(2756);
    ref.push(2756);

//len_list: 5
//==============================


//==============================
    submit.push(6546);
    ref.push(6546);

//len_list: 6
//==============================


//==============================
    submit.push(4585);
    ref.push(4585);

//len_list: 7
//==============================


//==============================
    submit.push(6958);
    ref.push(6958);

//len_list: 8
//==============================


//==============================
    submit.push(8732);
    ref.push(8732);

//len_list: 9
//==============================


//==============================
    submit.push(3269);
    ref.push(3269);

//len_list: 10
//==============================


//==============================
    submit.push(3059);
    ref.push(3059);

//len_list: 11
//==============================


//==============================
    submit.push(745);
    ref.push(745);

//len_list: 12
//==============================


//==============================
    submit.push(9423);
    ref.push(9423);

//len_list: 13
//==============================


//==============================
    submit.push(5195);
    ref.push(5195);

//len_list: 14
//==============================


//==============================
    submit.push(3003);
    ref.push(3003);

//len_list: 15
//==============================


//==============================
    submit.push(9680);
    ref.push(9680);

//len_list: 16
//==============================


//==============================
    submit.push(105);
    ref.push(105);

//len_list: 17
//==============================


//==============================
    submit.push(4847);
    ref.push(4847);

//len_list: 18
//==============================


//==============================
    submit.push(193);
    ref.push(193);

//len_list: 19
//==============================


//==============================
    submit.push(8430);
    ref.push(8430);

//len_list: 20
//==============================


//==============================
    submit.push(443);
    ref.push(443);

//len_list: 21
//==============================


//==============================
    submit.push(3052);
    ref.push(3052);

//len_list: 22
//==============================


//==============================
    submit.push(3692);
    ref.push(3692);

//len_list: 23
//==============================


//==============================
    submit.push(8318);
    ref.push(8318);

//len_list: 24
//==============================


//==============================
    submit.push(8313);
    ref.push(8313);

//len_list: 25
//==============================


//==============================
    submit.push(6729);
    ref.push(6729);

//len_list: 26
//==============================


//==============================
    submit.push(8389);
    ref.push(8389);

//len_list: 27
//==============================


//==============================
    submit.push(6364);
    ref.push(6364);

//len_list: 28
//==============================


//==============================
    submit.push(1464);
    ref.push(1464);

//len_list: 29
//==============================


//==============================
    submit.push(7368);
    ref.push(7368);

//len_list: 30
//==============================


//==============================
    submit.push(5424);
    ref.push(5424);

//len_list: 31
//==============================


//==============================
    submit.push(3734);
    ref.push(3734);

//len_list: 32
//==============================


//==============================
    submit.push(5148);
    ref.push(5148);

//len_list: 33
//==============================


//==============================
    submit.push(509);
    ref.push(509);

//len_list: 34
//==============================


//==============================
    submit.push(4350);
    ref.push(4350);

//len_list: 35
//==============================


//==============================
    submit.push(960);
    ref.push(960);

//len_list: 36
//==============================


//==============================
    submit.push(8078);
    ref.push(8078);

//len_list: 37
//==============================


//==============================
    submit.push(9962);
    ref.push(9962);

//len_list: 38
//==============================


//==============================
    submit.push(1936);
    ref.push(1936);

//len_list: 39
//==============================


//==============================
    submit.push(9108);
    ref.push(9108);

//len_list: 40
//==============================


//==============================
    submit.push(1359);
    ref.push(1359);

//len_list: 41
//==============================


//==============================
    submit.push(1117);
    ref.push(1117);

//len_list: 42
//==============================


//==============================
    submit.push(3610);
    ref.push(3610);

//len_list: 43
//==============================


//==============================
    submit.push(4028);
    ref.push(4028);

//len_list: 44
//==============================


//==============================
    submit.push(8255);
    ref.push(8255);

//len_list: 45
//==============================


//==============================
    submit.push(9105);
    ref.push(9105);

//len_list: 46
//==============================


//==============================
    submit.push(2206);
    ref.push(2206);

//len_list: 47
//==============================


//==============================
    submit.push(858);
    ref.push(858);

//len_list: 48
//==============================


//==============================
    submit.push(1999);
    ref.push(1999);

//len_list: 49
//==============================


//==============================
    submit.push(9171);
    ref.push(9171);

//len_list: 50
//==============================


//==============================
    submit.push(3687);
    ref.push(3687);

//len_list: 51
//==============================


//==============================
    submit.push(656);
    ref.push(656);

//len_list: 52
//==============================


//==============================
    submit.push(2086);
    ref.push(2086);

//len_list: 53
//==============================


//==============================
    submit.push(3218);
    ref.push(3218);

//len_list: 54
//==============================


//==============================
    submit.push(3803);
    ref.push(3803);

//len_list: 55
//==============================


//==============================
    submit.push(2414);
    ref.push(2414);

//len_list: 56
//==============================


//==============================
    submit.push(2092);
    ref.push(2092);

//len_list: 57
//==============================


//==============================
    submit.push(9700);
    ref.push(9700);

//len_list: 58
//==============================


//==============================
    submit.push(2216);
    ref.push(2216);

//len_list: 59
//==============================


//==============================
    submit.push(8409);
    ref.push(8409);

//len_list: 60
//==============================


//==============================
    submit.push(164);
    ref.push(164);

//len_list: 61
//==============================


//==============================
    submit.push(2013);
    ref.push(2013);

//len_list: 62
//==============================


//==============================
    submit.push(2246);
    ref.push(2246);

//len_list: 63
//==============================


//==============================
    submit.push(2573);
    ref.push(2573);

//len_list: 64
//==============================


//==============================
    submit.push(2391);
    ref.push(2391);

//len_list: 65
//==============================


//==============================
    submit.push(8409);
    ref.push(8409);

//len_list: 66
//==============================


//==============================
    submit.push(6430);
    ref.push(6430);

//len_list: 67
//==============================


//==============================
    submit.push(3873);
    ref.push(3873);

//len_list: 68
//==============================


//==============================
    submit.push(11);
    ref.push(11);

//len_list: 69
//==============================


//==============================
    submit.push(9249);
    ref.push(9249);

//len_list: 70
//==============================


//==============================
    submit.push(8949);
    ref.push(8949);

//len_list: 71
//==============================


//==============================
    submit.push(7664);
    ref.push(7664);

//len_list: 72
//==============================


//==============================
    submit.push(9805);
    ref.push(9805);

//len_list: 73
//==============================


//==============================
    submit.push(2382);
    ref.push(2382);

//len_list: 74
//==============================


//==============================
    submit.push(6425);
    ref.push(6425);

//len_list: 75
//==============================


//==============================
    submit.push(1126);
    ref.push(1126);

//len_list: 76
//==============================


//==============================
    submit.push(3800);
    ref.push(3800);

//len_list: 77
//==============================


//==============================
    submit.push(7799);
    ref.push(7799);

//len_list: 78
//==============================


//==============================
    submit.push(9937);
    ref.push(9937);

//len_list: 79
//==============================


//==============================
    submit.push(343);
    ref.push(343);

//len_list: 80
//==============================


//==============================
    submit.push(7679);
    ref.push(7679);

//len_list: 81
//==============================


//==============================
    submit.push(9252);
    ref.push(9252);

//len_list: 82
//==============================


//==============================
    submit.push(7361);
    ref.push(7361);

//len_list: 83
//==============================


//==============================
    submit.push(4158);
    ref.push(4158);

//len_list: 84
//==============================


//==============================
    submit.push(9934);
    ref.push(9934);

//len_list: 85
//==============================


//==============================
    submit.push(6137);
    ref.push(6137);

//len_list: 86
//==============================


//==============================
    submit.push(5387);
    ref.push(5387);

//len_list: 87
//==============================


//==============================
    submit.push(9455);
    ref.push(9455);

//len_list: 88
//==============================


//==============================
    submit.push(1385);
    ref.push(1385);

//len_list: 89
//==============================


//==============================
    submit.push(3049);
    ref.push(3049);

//len_list: 90
//==============================


//==============================
    submit.push(11);
    ref.push(11);

//len_list: 91
//==============================


//==============================
    submit.push(5081);
    ref.push(5081);

//len_list: 92
//==============================


//==============================
    submit.push(9711);
    ref.push(9711);

//len_list: 93
//==============================


//==============================
    submit.push(7107);
    ref.push(7107);

//len_list: 94
//==============================


//==============================
    submit.push(4991);
    ref.push(4991);

//len_list: 95
//==============================


//==============================
    submit.push(7261);
    ref.push(7261);

//len_list: 96
//==============================


//==============================
    submit.push(6292);
    ref.push(6292);

//len_list: 97
//==============================


//==============================
    submit.push(1824);
    ref.push(1824);

//len_list: 98
//==============================


//==============================
    submit.push(9763);
    ref.push(9763);

//len_list: 99
//==============================


//==============================
    submit.push(5535);
    ref.push(5535);

//len_list: 100
//==============================


//==============================
    submit.push(407);
    ref.push(407);

//len_list: 101
//==============================


//==============================
    submit.push(9803);
    ref.push(9803);

//len_list: 102
//==============================


//==============================
    submit.push(7976);
    ref.push(7976);

//len_list: 103
//==============================


//==============================
    submit.push(4180);
    ref.push(4180);

//len_list: 104
//==============================


//==============================
    submit.push(9429);
    ref.push(9429);

//len_list: 105
//==============================


//==============================
    submit.push(4530);
    ref.push(4530);

//len_list: 106
//==============================


//==============================
    submit.push(2187);
    ref.push(2187);

//len_list: 107
//==============================


//==============================
    submit.push(3469);
    ref.push(3469);

//len_list: 108
//==============================


//==============================
    submit.push(7421);
    ref.push(7421);

//len_list: 109
//==============================


//==============================
    submit.push(6710);
    ref.push(6710);

//len_list: 110
//==============================


//==============================
    submit.push(777);
    ref.push(777);

//len_list: 111
//==============================


//==============================
    submit.push(9729);
    ref.push(9729);

//len_list: 112
//==============================


//==============================
    submit.push(9759);
    ref.push(9759);

//len_list: 113
//==============================


//==============================
    submit.push(386);
    ref.push(386);

//len_list: 114
//==============================


//==============================
    submit.push(5597);
    ref.push(5597);

//len_list: 115
//==============================


//==============================
    submit.push(7951);
    ref.push(7951);

//len_list: 116
//==============================


//==============================
    submit.push(1294);
    ref.push(1294);

//len_list: 117
//==============================


//==============================
    submit.push(8211);
    ref.push(8211);

//len_list: 118
//==============================


//==============================
    submit.push(7983);
    ref.push(7983);

//len_list: 119
//==============================


//==============================
    submit.push(3785);
    ref.push(3785);

//len_list: 120
//==============================


//==============================
    submit.push(556);
    ref.push(556);

//len_list: 121
//==============================


//==============================
    submit.push(1064);
    ref.push(1064);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(2785);
    ref.push(2785);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(8727);
    ref.push(8727);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(4620);
    ref.push(4620);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(6411);
    ref.push(6411);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(9275);
    ref.push(9275);

//len_list: 123
//==============================


//==============================
    submit.push(3589);
    ref.push(3589);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(7497);
    ref.push(7497);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(2857);
    ref.push(2857);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(919);
    ref.push(919);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(5189);
    ref.push(5189);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(7147);
    ref.push(7147);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(1571);
    ref.push(1571);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(6700);
    ref.push(6700);

//len_list: 122
//==============================


//==============================
    submit.push(9316);
    ref.push(9316);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(8170);
    ref.push(8170);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(3643);
    ref.push(3643);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(8001);
    ref.push(8001);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(8569);
    ref.push(8569);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(5874);
    ref.push(5874);

//len_list: 122
//==============================


//==============================
    submit.push(7398);
    ref.push(7398);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(2999);
    ref.push(2999);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(4317);
    ref.push(4317);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(6756);
    ref.push(6756);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(0);
    ref.push(0);

//len_list: 122
//==============================


//==============================
    submit.push(762);
    ref.push(762);

//len_list: 123
//==============================


//==============================
    submit.push(9784);
    ref.push(9784);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(1798);
    ref.push(1798);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.push(8217);
    ref.push(8217);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.push(7195);
    ref.push(7195);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(7025);
    ref.push(7025);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(2775);
    ref.push(2775);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(2840);
    ref.push(2840);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.push(9732);
    ref.push(9732);

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
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(9601);
    ref.push(9601);

//len_list: 122
//==============================


//==============================
    submit.push(4586);
    ref.push(4586);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(8355);
    ref.push(8355);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(421);
    ref.push(421);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(5747);
    ref.push(5747);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(6059);
    ref.push(6059);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(6559);
    ref.push(6559);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(4825);
    ref.push(4825);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(2364);
    ref.push(2364);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(4360);
    ref.push(4360);

//len_list: 124
//==============================


//==============================
    submit.push(8686);
    ref.push(8686);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(4501);
    ref.push(4501);

//len_list: 124
//==============================


//==============================
    submit.push(4938);
    ref.push(4938);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 110
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
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(7219);
    ref.push(7219);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(9483);
    ref.push(9483);

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
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(5299);
    ref.push(5299);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 125
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
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(9692);
    ref.push(9692);

//len_list: 123
//==============================


//==============================
    submit.push(7252);
    ref.push(7252);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(1298);
    ref.push(1298);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(1267);
    ref.push(1267);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(3790);
    ref.push(3790);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(8264);
    ref.push(8264);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(7467);
    ref.push(7467);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(7844);
    ref.push(7844);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(1447);
    ref.push(1447);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 169
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
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(8035);
    ref.push(8035);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(8918);
    ref.push(8918);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(1274);
    ref.push(1274);

//len_list: 127
//==============================


//==============================
    submit.push(6111);
    ref.push(6111);

//len_list: 128
//==============================


//==============================
    submit.push(5530);
    ref.push(5530);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(1177);
    ref.push(1177);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(8168);
    ref.push(8168);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(8274);
    ref.push(8274);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(9038);
    ref.push(9038);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(6588);
    ref.push(6588);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 199
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
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(7678);
    ref.push(7678);

//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(955);
    ref.push(955);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(3172);
    ref.push(3172);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(8650);
    ref.push(8650);

//len_list: 131
//==============================


//==============================
    submit.push(8323);
    ref.push(8323);

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
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 213
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
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(2416);
    ref.push(2416);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
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
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(2395);
    ref.push(2395);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(4480);
    ref.push(4480);

//len_list: 130
//==============================


//==============================
    submit.push(9682);
    ref.push(9682);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(291);
    ref.push(291);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(501);
    ref.push(501);

//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(7186);
    ref.push(7186);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(8400);
    ref.push(8400);

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
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(8574);
    ref.push(8574);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(9362);
    ref.push(9362);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(202);
    ref.push(202);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(8068);
    ref.push(8068);

//len_list: 129
//==============================


//==============================
    submit.push(5104);
    ref.push(5104);

//len_list: 130
//==============================


//==============================
    submit.push(2329);
    ref.push(2329);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(9324);
    ref.push(9324);

//len_list: 132
//==============================


//==============================
    submit.push(5933);
    ref.push(5933);

//len_list: 133
//==============================


//==============================
    submit.push(2959);
    ref.push(2959);

//len_list: 134
//==============================


//==============================
    submit.push(169);
    ref.push(169);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(8793);
    ref.push(8793);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(2895);
    ref.push(2895);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(4990);
    ref.push(4990);

//len_list: 135
//==============================


//==============================
    submit.push(2390);
    ref.push(2390);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.push(2718);
    ref.push(2718);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.push(6481);
    ref.push(6481);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(7631);
    ref.push(7631);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(5380);
    ref.push(5380);

//len_list: 134
//==============================


//==============================
    submit.push(4225);
    ref.push(4225);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(9570);
    ref.push(9570);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    submit.push(2163);
    ref.push(2163);

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(5760);
    ref.push(5760);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.push(1061);
    ref.push(1061);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(3804);
    ref.push(3804);

//len_list: 134
//==============================


//==============================
    submit.push(1133);
    ref.push(1133);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(2919);
    ref.push(2919);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(2972);
    ref.push(2972);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    submit.push(4549);
    ref.push(4549);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(1048);
    ref.push(1048);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 295
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(1164);
    ref.push(1164);

//len_list: 132
//==============================


//==============================
    submit.push(6675);
    ref.push(6675);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(8085);
    ref.push(8085);

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(107);
    ref.push(107);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(7658);
    ref.push(7658);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(4101);
    ref.push(4101);

//len_list: 135
//==============================


//==============================
    submit.push(9605);
    ref.push(9605);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(3067);
    ref.push(3067);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(2345);
    ref.push(2345);

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
    submit.push(7871);
    ref.push(7871);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(6852);
    ref.push(6852);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4652);
    ref.push(4652);

//len_list: 136
//==============================


//==============================
    submit.push(4527);
    ref.push(4527);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(9838);
    ref.push(9838);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 325
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
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(7520);
    ref.push(7520);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(4464);
    ref.push(4464);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(9513);
    ref.push(9513);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(5744);
    ref.push(5744);

//len_list: 138
//==============================


//==============================
    submit.push(5669);
    ref.push(5669);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(6884);
    ref.push(6884);

//len_list: 140
//==============================


//==============================
    submit.push(9598);
    ref.push(9598);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(2661);
    ref.push(2661);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(1008);
    ref.push(1008);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(511);
    ref.push(511);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(7563);
    ref.push(7563);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(5447);
    ref.push(5447);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(2138);
    ref.push(2138);

//len_list: 144
//==============================


//==============================
    submit.push(9249);
    ref.push(9249);

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(4071);
    ref.push(4071);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 365
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
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 374
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
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(3095);
    ref.push(3095);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(1429);
    ref.push(1429);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(8394);
    ref.push(8394);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(8007);
    ref.push(8007);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(3472);
    ref.push(3472);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(264);
    ref.push(264);

//len_list: 144
//==============================


//==============================
    submit.push(5705);
    ref.push(5705);

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
//num_require: 389
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
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(122);
    ref.push(122);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
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
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 412
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(5060);
    ref.push(5060);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(7528);
    ref.push(7528);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(100);
    ref.push(100);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(2934);
    ref.push(2934);

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(8902);
    ref.push(8902);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(3896);
    ref.push(3896);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(1942);
    ref.push(1942);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(645);
    ref.push(645);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(737);
    ref.push(737);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(871);
    ref.push(871);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(2320);
    ref.push(2320);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(9636);
    ref.push(9636);

//len_list: 131
//==============================


//==============================
    submit.push(685);
    ref.push(685);

//len_list: 132
//==============================


//==============================
    submit.push(2475);
    ref.push(2475);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(2144);
    ref.push(2144);

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    submit.push(4171);
    ref.push(4171);

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
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
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
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(2346);
    ref.push(2346);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(7905);
    ref.push(7905);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(4293);
    ref.push(4293);

//len_list: 132
//==============================


//==============================
    submit.push(1533);
    ref.push(1533);

//len_list: 133
//==============================


//==============================
    submit.push(7414);
    ref.push(7414);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(9);
    ref.push(9);

//len_list: 134
//==============================


//==============================
    submit.push(2986);
    ref.push(2986);

//len_list: 135
//==============================


//==============================
    submit.push(9746);
    ref.push(9746);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(9264);
    ref.push(9264);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(6738);
    ref.push(6738);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(2394);
    ref.push(2394);

//len_list: 139
//==============================


//==============================
    submit.push(7158);
    ref.push(7158);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(8926);
    ref.push(8926);

//len_list: 138
//==============================


//==============================
    submit.push(5360);
    ref.push(5360);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(2252);
    ref.push(2252);

//len_list: 140
//==============================


//==============================
    submit.push(8217);
    ref.push(8217);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(7648);
    ref.push(7648);

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
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(1721);
    ref.push(1721);

//len_list: 138
//==============================


//==============================
    submit.push(8163);
    ref.push(8163);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    submit.push(157);
    ref.push(157);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(931);
    ref.push(931);

//len_list: 139
//==============================


//==============================
    submit.push(6050);
    ref.push(6050);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(1784);
    ref.push(1784);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(229);
    ref.push(229);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(1495);
    ref.push(1495);

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
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(7651);
    ref.push(7651);

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
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(7884);
    ref.push(7884);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(4632);
    ref.push(4632);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(3599);
    ref.push(3599);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(2457);
    ref.push(2457);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(6329);
    ref.push(6329);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(533);
    ref.push(533);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(853);
    ref.push(853);

//len_list: 141
//==============================


//==============================
    submit.push(2664);
    ref.push(2664);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(8595);
    ref.push(8595);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(7329);
    ref.push(7329);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(5485);
    ref.push(5485);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(1958);
    ref.push(1958);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(3163);
    ref.push(3163);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(1294);
    ref.push(1294);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(1567);
    ref.push(1567);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3280);
    ref.push(3280);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(5787);
    ref.push(5787);

//len_list: 141
//==============================


//==============================
    submit.push(206);
    ref.push(206);

//len_list: 142
//==============================


//==============================
    submit.push(7329);
    ref.push(7329);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(3168);
    ref.push(3168);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(9727);
    ref.push(9727);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3881);
    ref.push(3881);

//len_list: 141
//==============================


//==============================
    submit.push(6306);
    ref.push(6306);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(4276);
    ref.push(4276);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(5066);
    ref.push(5066);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(9960);
    ref.push(9960);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(454);
    ref.push(454);

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
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(4124);
    ref.push(4124);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(7024);
    ref.push(7024);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(469);
    ref.push(469);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6584);
    ref.push(6584);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(410);
    ref.push(410);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(6828);
    ref.push(6828);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
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
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(9874);
    ref.push(9874);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(6850);
    ref.push(6850);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(8057);
    ref.push(8057);

//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(4114);
    ref.push(4114);

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
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 599
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
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(4593);
    ref.push(4593);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(1699);
    ref.push(1699);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(1313);
    ref.push(1313);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 605
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
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(6839);
    ref.push(6839);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(7232);
    ref.push(7232);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(6862);
    ref.push(6862);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(2669);
    ref.push(2669);

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.push(7106);
    ref.push(7106);

//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 611
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
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 616
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
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(8845);
    ref.push(8845);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(4738);
    ref.push(4738);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(9238);
    ref.push(9238);

//len_list: 148
//==============================


//==============================
    submit.push(5110);
    ref.push(5110);

//len_list: 149
//==============================


//==============================
    submit.push(369);
    ref.push(369);

//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(9077);
    ref.push(9077);

//len_list: 151
//==============================


//==============================
    submit.push(4551);
    ref.push(4551);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(7964);
    ref.push(7964);

//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 633
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
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.push(4819);
    ref.push(4819);

//len_list: 150
//==============================


//==============================
    submit.push(8463);
    ref.push(8463);

//len_list: 151
//==============================


//==============================
    submit.push(9504);
    ref.push(9504);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.push(6830);
    ref.push(6830);

//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.push(3249);
    ref.push(3249);

//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
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
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.push(7013);
    ref.push(7013);

//len_list: 151
//==============================


//==============================
    submit.push(8670);
    ref.push(8670);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 650
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
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(1368);
    ref.push(1368);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 151
//==============================


//==============================
    submit.push(1515);
    ref.push(1515);

//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.push(2079);
    ref.push(2079);

//len_list: 153
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 152
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    submit.push(7286);
    ref.push(7286);

//len_list: 153
//==============================


//==============================
    submit.push(8367);
    ref.push(8367);

//len_list: 154
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 153
//==============================


//==============================
    submit.push(4664);
    ref.push(4664);

//len_list: 154
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 154
//==============================


//==============================
    submit.push(8973);
    ref.push(8973);

//len_list: 155
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 154
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
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
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 153
//==============================


//==============================
    submit.push(4607);
    ref.push(4607);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 152
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 149
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 684
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
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(8764);
    ref.push(8764);

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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(5890);
    ref.push(5890);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 695
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
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(5473);
    ref.push(5473);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 698
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
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    submit.push(5173);
    ref.push(5173);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    submit.push(8118);
    ref.push(8118);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3771);
    ref.push(3771);

//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(825);
    ref.push(825);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(1319);
    ref.push(1319);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(9026);
    ref.push(9026);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(7289);
    ref.push(7289);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(7235);
    ref.push(7235);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(2021);
    ref.push(2021);

//len_list: 135
//==============================


//==============================
    submit.push(9254);
    ref.push(9254);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(8942);
    ref.push(8942);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    submit.push(9983);
    ref.push(9983);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 754
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
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(690);
    ref.push(690);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(868);
    ref.push(868);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(7478);
    ref.push(7478);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(481);
    ref.push(481);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(1794);
    ref.push(1794);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(1514);
    ref.push(1514);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(113);
    ref.push(113);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(5524);
    ref.push(5524);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(1456);
    ref.push(1456);

//len_list: 132
//==============================


//==============================
    submit.push(2810);
    ref.push(2810);

//len_list: 133
//==============================


//==============================
    submit.push(4296);
    ref.push(4296);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(4622);
    ref.push(4622);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 787
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
    submit.push(8439);
    ref.push(8439);

//len_list: 134
//==============================


//==============================
    submit.push(8021);
    ref.push(8021);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(1908);
    ref.push(1908);

//len_list: 136
//==============================


//==============================
    submit.push(3023);
    ref.push(3023);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(4447);
    ref.push(4447);

//len_list: 138
//==============================


//==============================
    submit.push(9899);
    ref.push(9899);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    submit.push(2239);
    ref.push(2239);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(3971);
    ref.push(3971);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(7122);
    ref.push(7122);

//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    submit.push(1584);
    ref.push(1584);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(3825);
    ref.push(3825);

//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(331);
    ref.push(331);

//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(8526);
    ref.push(8526);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(2859);
    ref.push(2859);

//len_list: 139
//==============================


//==============================
    submit.push(3089);
    ref.push(3089);

//len_list: 140
//==============================


//==============================
    submit.push(5599);
    ref.push(5599);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(9065);
    ref.push(9065);

//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(6167);
    ref.push(6167);

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
//num_require: 842
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
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(561);
    ref.push(561);

//len_list: 138
//==============================


//==============================
    submit.push(7847);
    ref.push(7847);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    submit.push(3743);
    ref.push(3743);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 855
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(3579);
    ref.push(3579);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 861
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
    submit.push(7941);
    ref.push(7941);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.push(9195);
    ref.push(9195);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(8735);
    ref.push(8735);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(3221);
    ref.push(3221);

//len_list: 130
//==============================


//==============================
    submit.push(9602);
    ref.push(9602);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 874
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
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(2176);
    ref.push(2176);

//len_list: 131
//==============================


//==============================
    submit.push(7860);
    ref.push(7860);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(1884);
    ref.push(1884);

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
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(8905);
    ref.push(8905);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(1582);
    ref.push(1582);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(4485);
    ref.push(4485);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(2541);
    ref.push(2541);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(9307);
    ref.push(9307);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.push(7020);
    ref.push(7020);

//len_list: 124
//==============================


//==============================
    submit.push(2407);
    ref.push(2407);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.push(2703);
    ref.push(2703);

//len_list: 125
//==============================


//==============================
    submit.push(9139);
    ref.push(9139);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(1244);
    ref.push(1244);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.push(532);
    ref.push(532);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(8100);
    ref.push(8100);

//len_list: 125
//==============================


//==============================
    submit.push(499);
    ref.push(499);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(4982);
    ref.push(4982);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(3126);
    ref.push(3126);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(8525);
    ref.push(8525);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(5570);
    ref.push(5570);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(1738);
    ref.push(1738);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(3706);
    ref.push(3706);

//len_list: 130
//==============================


//==============================
    submit.push(6032);
    ref.push(6032);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(389);
    ref.push(389);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(105);
    ref.push(105);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(6046);
    ref.push(6046);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(4458);
    ref.push(4458);

//len_list: 135
//==============================


//==============================
    submit.push(470);
    ref.push(470);

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
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(8987);
    ref.push(8987);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(4306);
    ref.push(4306);

//len_list: 130
//==============================


//==============================
    submit.push(4218);
    ref.push(4218);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 955
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
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(7778);
    ref.push(7778);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(7992);
    ref.push(7992);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(691);
    ref.push(691);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(4406);
    ref.push(4406);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(8610);
    ref.push(8610);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(4694);
    ref.push(4694);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(5408);
    ref.push(5408);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(4208);
    ref.push(4208);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(1);
    ref.push(1);

//len_list: 134
//==============================


//==============================
    submit.push(1773);
    ref.push(1773);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 984
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
    submit.push(339);
    ref.push(339);

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    submit.push(42);
    ref.push(42);

//len_list: 134
//==============================


//==============================
    submit.push(8026);
    ref.push(8026);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 990
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
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(2132);
    ref.push(2132);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(5591);
    ref.push(5591);

//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(6146);
    ref.push(6146);

//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


}
