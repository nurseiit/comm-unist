
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (153,1935)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(8847);
    ref.push(8847);

//len_list: 1
//==============================


//==============================
    submit.push(2747);
    ref.push(2747);

//len_list: 2
//==============================


//==============================
    submit.push(6740);
    ref.push(6740);

//len_list: 3
//==============================


//==============================
    submit.push(7);
    ref.push(7);

//len_list: 4
//==============================


//==============================
    submit.push(8283);
    ref.push(8283);

//len_list: 5
//==============================


//==============================
    submit.push(9371);
    ref.push(9371);

//len_list: 6
//==============================


//==============================
    submit.push(1685);
    ref.push(1685);

//len_list: 7
//==============================


//==============================
    submit.push(832);
    ref.push(832);

//len_list: 8
//==============================


//==============================
    submit.push(5241);
    ref.push(5241);

//len_list: 9
//==============================


//==============================
    submit.push(5091);
    ref.push(5091);

//len_list: 10
//==============================


//==============================
    submit.push(7403);
    ref.push(7403);

//len_list: 11
//==============================


//==============================
    submit.push(4812);
    ref.push(4812);

//len_list: 12
//==============================


//==============================
    submit.push(2464);
    ref.push(2464);

//len_list: 13
//==============================


//==============================
    submit.push(4438);
    ref.push(4438);

//len_list: 14
//==============================


//==============================
    submit.push(4707);
    ref.push(4707);

//len_list: 15
//==============================


//==============================
    submit.push(2368);
    ref.push(2368);

//len_list: 16
//==============================


//==============================
    submit.push(1743);
    ref.push(1743);

//len_list: 17
//==============================


//==============================
    submit.push(9358);
    ref.push(9358);

//len_list: 18
//==============================


//==============================
    submit.push(2170);
    ref.push(2170);

//len_list: 19
//==============================


//==============================
    submit.push(1143);
    ref.push(1143);

//len_list: 20
//==============================


//==============================
    submit.push(636);
    ref.push(636);

//len_list: 21
//==============================


//==============================
    submit.push(6519);
    ref.push(6519);

//len_list: 22
//==============================


//==============================
    submit.push(5125);
    ref.push(5125);

//len_list: 23
//==============================


//==============================
    submit.push(9347);
    ref.push(9347);

//len_list: 24
//==============================


//==============================
    submit.push(6839);
    ref.push(6839);

//len_list: 25
//==============================


//==============================
    submit.push(1366);
    ref.push(1366);

//len_list: 26
//==============================


//==============================
    submit.push(1965);
    ref.push(1965);

//len_list: 27
//==============================


//==============================
    submit.push(2111);
    ref.push(2111);

//len_list: 28
//==============================


//==============================
    submit.push(1939);
    ref.push(1939);

//len_list: 29
//==============================


//==============================
    submit.push(6120);
    ref.push(6120);

//len_list: 30
//==============================


//==============================
    submit.push(6465);
    ref.push(6465);

//len_list: 31
//==============================


//==============================
    submit.push(586);
    ref.push(586);

//len_list: 32
//==============================


//==============================
    submit.push(8263);
    ref.push(8263);

//len_list: 33
//==============================


//==============================
    submit.push(7172);
    ref.push(7172);

//len_list: 34
//==============================


//==============================
    submit.push(4409);
    ref.push(4409);

//len_list: 35
//==============================


//==============================
    submit.push(3694);
    ref.push(3694);

//len_list: 36
//==============================


//==============================
    submit.push(5766);
    ref.push(5766);

//len_list: 37
//==============================


//==============================
    submit.push(821);
    ref.push(821);

//len_list: 38
//==============================


//==============================
    submit.push(2053);
    ref.push(2053);

//len_list: 39
//==============================


//==============================
    submit.push(9732);
    ref.push(9732);

//len_list: 40
//==============================


//==============================
    submit.push(4926);
    ref.push(4926);

//len_list: 41
//==============================


//==============================
    submit.push(4683);
    ref.push(4683);

//len_list: 42
//==============================


//==============================
    submit.push(7376);
    ref.push(7376);

//len_list: 43
//==============================


//==============================
    submit.push(9748);
    ref.push(9748);

//len_list: 44
//==============================


//==============================
    submit.push(2742);
    ref.push(2742);

//len_list: 45
//==============================


//==============================
    submit.push(5619);
    ref.push(5619);

//len_list: 46
//==============================


//==============================
    submit.push(6653);
    ref.push(6653);

//len_list: 47
//==============================


//==============================
    submit.push(6610);
    ref.push(6610);

//len_list: 48
//==============================


//==============================
    submit.push(1402);
    ref.push(1402);

//len_list: 49
//==============================


//==============================
    submit.push(9047);
    ref.push(9047);

//len_list: 50
//==============================


//==============================
    submit.push(1453);
    ref.push(1453);

//len_list: 51
//==============================


//==============================
    submit.push(197);
    ref.push(197);

//len_list: 52
//==============================


//==============================
    submit.push(1882);
    ref.push(1882);

//len_list: 53
//==============================


//==============================
    submit.push(3192);
    ref.push(3192);

//len_list: 54
//==============================


//==============================
    submit.push(615);
    ref.push(615);

//len_list: 55
//==============================


//==============================
    submit.push(7073);
    ref.push(7073);

//len_list: 56
//==============================


//==============================
    submit.push(9031);
    ref.push(9031);

//len_list: 57
//==============================


//==============================
    submit.push(9046);
    ref.push(9046);

//len_list: 58
//==============================


//==============================
    submit.push(1457);
    ref.push(1457);

//len_list: 59
//==============================


//==============================
    submit.push(10);
    ref.push(10);

//len_list: 60
//==============================


//==============================
    submit.push(2788);
    ref.push(2788);

//len_list: 61
//==============================


//==============================
    submit.push(1126);
    ref.push(1126);

//len_list: 62
//==============================


//==============================
    submit.push(7862);
    ref.push(7862);

//len_list: 63
//==============================


//==============================
    submit.push(1859);
    ref.push(1859);

//len_list: 64
//==============================


//==============================
    submit.push(7860);
    ref.push(7860);

//len_list: 65
//==============================


//==============================
    submit.push(530);
    ref.push(530);

//len_list: 66
//==============================


//==============================
    submit.push(1099);
    ref.push(1099);

//len_list: 67
//==============================


//==============================
    submit.push(8709);
    ref.push(8709);

//len_list: 68
//==============================


//==============================
    submit.push(3653);
    ref.push(3653);

//len_list: 69
//==============================


//==============================
    submit.push(3481);
    ref.push(3481);

//len_list: 70
//==============================


//==============================
    submit.push(2174);
    ref.push(2174);

//len_list: 71
//==============================


//==============================
    submit.push(1219);
    ref.push(1219);

//len_list: 72
//==============================


//==============================
    submit.push(526);
    ref.push(526);

//len_list: 73
//==============================


//==============================
    submit.push(5320);
    ref.push(5320);

//len_list: 74
//==============================


//==============================
    submit.push(1273);
    ref.push(1273);

//len_list: 75
//==============================


//==============================
    submit.push(571);
    ref.push(571);

//len_list: 76
//==============================


//==============================
    submit.push(7993);
    ref.push(7993);

//len_list: 77
//==============================


//==============================
    submit.push(8406);
    ref.push(8406);

//len_list: 78
//==============================


//==============================
    submit.push(4734);
    ref.push(4734);

//len_list: 79
//==============================


//==============================
    submit.push(3042);
    ref.push(3042);

//len_list: 80
//==============================


//==============================
    submit.push(858);
    ref.push(858);

//len_list: 81
//==============================


//==============================
    submit.push(6901);
    ref.push(6901);

//len_list: 82
//==============================


//==============================
    submit.push(1354);
    ref.push(1354);

//len_list: 83
//==============================


//==============================
    submit.push(504);
    ref.push(504);

//len_list: 84
//==============================


//==============================
    submit.push(9236);
    ref.push(9236);

//len_list: 85
//==============================


//==============================
    submit.push(415);
    ref.push(415);

//len_list: 86
//==============================


//==============================
    submit.push(7691);
    ref.push(7691);

//len_list: 87
//==============================


//==============================
    submit.push(4575);
    ref.push(4575);

//len_list: 88
//==============================


//==============================
    submit.push(7793);
    ref.push(7793);

//len_list: 89
//==============================


//==============================
    submit.push(5335);
    ref.push(5335);

//len_list: 90
//==============================


//==============================
    submit.push(9754);
    ref.push(9754);

//len_list: 91
//==============================


//==============================
    submit.push(9205);
    ref.push(9205);

//len_list: 92
//==============================


//==============================
    submit.push(9332);
    ref.push(9332);

//len_list: 93
//==============================


//==============================
    submit.push(2845);
    ref.push(2845);

//len_list: 94
//==============================


//==============================
    submit.push(7979);
    ref.push(7979);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(3231);
    ref.push(3231);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(837);
    ref.push(837);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(4298);
    ref.push(4298);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(976);
    ref.push(976);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(3679);
    ref.push(3679);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(5349);
    ref.push(5349);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(8899);
    ref.push(8899);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(2838);
    ref.push(2838);

//len_list: 96
//==============================


//==============================
    submit.push(6452);
    ref.push(6452);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(2582);
    ref.push(2582);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(6533);
    ref.push(6533);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(9990);
    ref.push(9990);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(41);
    ref.push(41);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(9774);
    ref.push(9774);

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1468);
    ref.push(1468);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(3845);
    ref.push(3845);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(7253);
    ref.push(7253);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(4917);
    ref.push(4917);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(857);
    ref.push(857);

//len_list: 97
//==============================


//==============================
    submit.push(8379);
    ref.push(8379);

//len_list: 98
//==============================


//==============================
    submit.push(7316);
    ref.push(7316);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(9755);
    ref.push(9755);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(314);
    ref.push(314);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(4188);
    ref.push(4188);

//len_list: 95
//==============================


//==============================
    submit.push(9789);
    ref.push(9789);

//len_list: 96
//==============================


//==============================
    submit.push(4055);
    ref.push(4055);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(912);
    ref.push(912);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(2653);
    ref.push(2653);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(6463);
    ref.push(6463);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(528);
    ref.push(528);

//len_list: 98
//==============================


//==============================
    submit.push(6893);
    ref.push(6893);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(7312);
    ref.push(7312);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(7408);
    ref.push(7408);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(9243);
    ref.push(9243);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(8969);
    ref.push(8969);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(5198);
    ref.push(5198);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(1294);
    ref.push(1294);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(182);
    ref.push(182);

//len_list: 96
//==============================


//==============================
    submit.push(2918);
    ref.push(2918);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(7670);
    ref.push(7670);

//len_list: 96
//==============================


//==============================
    submit.push(3528);
    ref.push(3528);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(8902);
    ref.push(8902);

//len_list: 96
//==============================


//==============================
    submit.push(7814);
    ref.push(7814);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(8950);
    ref.push(8950);

//len_list: 98
//==============================


//==============================
    submit.push(367);
    ref.push(367);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(3076);
    ref.push(3076);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2113);
    ref.push(2113);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2202);
    ref.push(2202);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(538);
    ref.push(538);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(296);
    ref.push(296);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6508);
    ref.push(6508);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9248);
    ref.push(9248);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(8283);
    ref.push(8283);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(733);
    ref.push(733);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1460);
    ref.push(1460);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(6080);
    ref.push(6080);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(919);
    ref.push(919);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(7620);
    ref.push(7620);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(6609);
    ref.push(6609);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2786);
    ref.push(2786);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(7202);
    ref.push(7202);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(8084);
    ref.push(8084);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(544);
    ref.push(544);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(4666);
    ref.push(4666);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(3870);
    ref.push(3870);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(5014);
    ref.push(5014);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1946);
    ref.push(1946);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(2253);
    ref.push(2253);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(8119);
    ref.push(8119);

//len_list: 98
//==============================


//==============================
    submit.push(5193);
    ref.push(5193);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(2051);
    ref.push(2051);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(5764);
    ref.push(5764);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(2837);
    ref.push(2837);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(5762);
    ref.push(5762);

//len_list: 95
//==============================


//==============================
    submit.push(710);
    ref.push(710);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(3621);
    ref.push(3621);

//len_list: 97
//==============================


//==============================
    submit.push(8625);
    ref.push(8625);

//len_list: 98
//==============================


//==============================
    submit.push(9566);
    ref.push(9566);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2477);
    ref.push(2477);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(1625);
    ref.push(1625);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(3355);
    ref.push(3355);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5643);
    ref.push(5643);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4118);
    ref.push(4118);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(5564);
    ref.push(5564);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(2204);
    ref.push(2204);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(7131);
    ref.push(7131);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(1000);
    ref.push(1000);

//len_list: 98
//==============================


//==============================
    submit.push(7679);
    ref.push(7679);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(4708);
    ref.push(4708);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(2798);
    ref.push(2798);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(9689);
    ref.push(9689);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(2368);
    ref.push(2368);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(2514);
    ref.push(2514);

//len_list: 95
//==============================


//==============================
    submit.push(7356);
    ref.push(7356);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1444);
    ref.push(1444);

//len_list: 97
//==============================


//==============================
    submit.push(4231);
    ref.push(4231);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(165);
    ref.push(165);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(3764);
    ref.push(3764);

//len_list: 99
//==============================


//==============================
    submit.push(1898);
    ref.push(1898);

//len_list: 100
//==============================


//==============================
    submit.push(4466);
    ref.push(4466);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(143);
    ref.push(143);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(8913);
    ref.push(8913);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5666);
    ref.push(5666);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(1368);
    ref.push(1368);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(5508);
    ref.push(5508);

//len_list: 98
//==============================


//==============================
    submit.push(9483);
    ref.push(9483);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(7181);
    ref.push(7181);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(295);
    ref.push(295);

//len_list: 99
//==============================


//==============================
    submit.push(2191);
    ref.push(2191);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(1651);
    ref.push(1651);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(5384);
    ref.push(5384);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(3736);
    ref.push(3736);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(1863);
    ref.push(1863);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(965);
    ref.push(965);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(1660);
    ref.push(1660);

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(3481);
    ref.push(3481);

//len_list: 98
//==============================


//==============================
    submit.push(8838);
    ref.push(8838);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(5226);
    ref.push(5226);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(8832);
    ref.push(8832);

//len_list: 100
//==============================


//==============================
    submit.push(2343);
    ref.push(2343);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(9980);
    ref.push(9980);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1827);
    ref.push(1827);

//len_list: 100
//==============================


//==============================
    submit.push(117);
    ref.push(117);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(464);
    ref.push(464);

//len_list: 101
//==============================


//==============================
    submit.push(716);
    ref.push(716);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(3210);
    ref.push(3210);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(3385);
    ref.push(3385);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(2843);
    ref.push(2843);

//len_list: 102
//==============================


//==============================
    submit.push(2538);
    ref.push(2538);

//len_list: 103
//==============================


//==============================
    submit.push(7462);
    ref.push(7462);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(8613);
    ref.push(8613);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(6706);
    ref.push(6706);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(4108);
    ref.push(4108);

//len_list: 105
//==============================


//==============================
    submit.push(8109);
    ref.push(8109);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(8815);
    ref.push(8815);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(2599);
    ref.push(2599);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(5710);
    ref.push(5710);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(3753);
    ref.push(3753);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(5551);
    ref.push(5551);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(344);
    ref.push(344);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(7945);
    ref.push(7945);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(8568);
    ref.push(8568);

//len_list: 106
//==============================


//==============================
    submit.push(3931);
    ref.push(3931);

//len_list: 107
//==============================


//==============================
    submit.push(1663);
    ref.push(1663);

//len_list: 108
//==============================


//==============================
    submit.push(8023);
    ref.push(8023);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(14);
    ref.push(14);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(8424);
    ref.push(8424);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.push(4534);
    ref.push(4534);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(5509);
    ref.push(5509);

//len_list: 108
//==============================


//==============================
    submit.push(9903);
    ref.push(9903);

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(5922);
    ref.push(5922);

//len_list: 109
//==============================


//==============================
    submit.push(4048);
    ref.push(4048);

//len_list: 110
//==============================


//==============================
    submit.push(4327);
    ref.push(4327);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(9340);
    ref.push(9340);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(6601);
    ref.push(6601);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(1930);
    ref.push(1930);

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(456);
    ref.push(456);

//len_list: 114
//==============================


//==============================
    submit.push(2864);
    ref.push(2864);

//len_list: 115
//==============================


//==============================
    submit.push(812);
    ref.push(812);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(821);
    ref.push(821);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(1088);
    ref.push(1088);

//len_list: 116
//==============================


//==============================
    submit.push(2778);
    ref.push(2778);

//len_list: 117
//==============================


//==============================
    submit.push(9508);
    ref.push(9508);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(4113);
    ref.push(4113);

//len_list: 113
//==============================


//==============================
    submit.push(1332);
    ref.push(1332);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(6849);
    ref.push(6849);

//len_list: 113
//==============================


//==============================
    submit.push(2757);
    ref.push(2757);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(1083);
    ref.push(1083);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(6303);
    ref.push(6303);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(8546);
    ref.push(8546);

//len_list: 115
//==============================


//==============================
    submit.push(4595);
    ref.push(4595);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(1034);
    ref.push(1034);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(9143);
    ref.push(9143);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(811);
    ref.push(811);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(6417);
    ref.push(6417);

//len_list: 115
//==============================


//==============================
    submit.push(538);
    ref.push(538);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(9733);
    ref.push(9733);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(55);
    ref.push(55);

//len_list: 116
//==============================


//==============================
    submit.push(2839);
    ref.push(2839);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.push(4688);
    ref.push(4688);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(7582);
    ref.push(7582);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(3694);
    ref.push(3694);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(8513);
    ref.push(8513);

//len_list: 115
//==============================


//==============================
    submit.push(8606);
    ref.push(8606);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(7967);
    ref.push(7967);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(8472);
    ref.push(8472);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(7194);
    ref.push(7194);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(7176);
    ref.push(7176);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(6698);
    ref.push(6698);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(1394);
    ref.push(1394);

//len_list: 113
//==============================


//==============================
    submit.push(4691);
    ref.push(4691);

//len_list: 114
//==============================


//==============================
    submit.push(4221);
    ref.push(4221);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(2441);
    ref.push(2441);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(5656);
    ref.push(5656);

//len_list: 114
//==============================


//==============================
    submit.push(4245);
    ref.push(4245);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(3656);
    ref.push(3656);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(4967);
    ref.push(4967);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(5090);
    ref.push(5090);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(2496);
    ref.push(2496);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(8760);
    ref.push(8760);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(8740);
    ref.push(8740);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(5158);
    ref.push(5158);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(1887);
    ref.push(1887);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(6290);
    ref.push(6290);

//len_list: 115
//==============================


//==============================
    submit.push(9767);
    ref.push(9767);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3975);
    ref.push(3975);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(4330);
    ref.push(4330);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(813);
    ref.push(813);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(2487);
    ref.push(2487);

//len_list: 116
//==============================


//==============================
    submit.push(4582);
    ref.push(4582);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(6111);
    ref.push(6111);

//len_list: 118
//==============================


//==============================
    submit.push(5625);
    ref.push(5625);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(7877);
    ref.push(7877);

//len_list: 120
//==============================


//==============================
    submit.push(8155);
    ref.push(8155);

//len_list: 121
//==============================


//==============================
    submit.push(5665);
    ref.push(5665);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(5054);
    ref.push(5054);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(7081);
    ref.push(7081);

//len_list: 122
//==============================


//==============================
    submit.push(6114);
    ref.push(6114);

//len_list: 123
//==============================


//==============================
    submit.push(5186);
    ref.push(5186);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(1526);
    ref.push(1526);

//len_list: 125
//==============================


//==============================
    submit.push(3469);
    ref.push(3469);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(3280);
    ref.push(3280);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(3715);
    ref.push(3715);

//len_list: 126
//==============================


//==============================
    submit.push(1969);
    ref.push(1969);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.push(7665);
    ref.push(7665);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
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
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(6335);
    ref.push(6335);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.push(9256);
    ref.push(9256);

//len_list: 125
//==============================


//==============================
    submit.push(1495);
    ref.push(1495);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 429
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(1725);
    ref.push(1725);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
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
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(4640);
    ref.push(4640);

//len_list: 123
//==============================


//==============================
    submit.push(2492);
    ref.push(2492);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(4258);
    ref.push(4258);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(2176);
    ref.push(2176);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
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
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(2901);
    ref.push(2901);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.push(3649);
    ref.push(3649);

//len_list: 120
//==============================


//==============================
    submit.push(7825);
    ref.push(7825);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(9131);
    ref.push(9131);

//len_list: 122
//==============================


//==============================
    submit.push(5272);
    ref.push(5272);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(9167);
    ref.push(9167);

//len_list: 124
//==============================


//==============================
    submit.push(7588);
    ref.push(7588);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(7497);
    ref.push(7497);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(5646);
    ref.push(5646);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(6587);
    ref.push(6587);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(8025);
    ref.push(8025);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(6858);
    ref.push(6858);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(1580);
    ref.push(1580);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(8825);
    ref.push(8825);

//len_list: 129
//==============================


//==============================
    submit.push(3022);
    ref.push(3022);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(1600);
    ref.push(1600);

//len_list: 130
//==============================


//==============================
    submit.push(5491);
    ref.push(5491);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(4123);
    ref.push(4123);

//len_list: 132
//==============================


//==============================
    submit.push(385);
    ref.push(385);

//len_list: 133
//==============================


//==============================
    submit.push(84);
    ref.push(84);

//len_list: 134
//==============================


//==============================
    submit.push(5853);
    ref.push(5853);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 462
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
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(358);
    ref.push(358);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(7672);
    ref.push(7672);

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
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(3187);
    ref.push(3187);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 473
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 476
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
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(9323);
    ref.push(9323);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(5923);
    ref.push(5923);

//len_list: 126
//==============================


//==============================
    submit.push(5223);
    ref.push(5223);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(2820);
    ref.push(2820);

//len_list: 126
//==============================


//==============================
    submit.push(2674);
    ref.push(2674);

//len_list: 127
//==============================


//==============================
    submit.push(4583);
    ref.push(4583);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    submit.push(7543);
    ref.push(7543);

//len_list: 128
//==============================


//==============================
    submit.push(3385);
    ref.push(3385);

//len_list: 129
//==============================


//==============================
    submit.push(3993);
    ref.push(3993);

//len_list: 130
//==============================


//==============================
    submit.push(3249);
    ref.push(3249);

//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(8669);
    ref.push(8669);

//len_list: 131
//==============================


//==============================
    submit.push(5704);
    ref.push(5704);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(4442);
    ref.push(4442);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 497
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(233);
    ref.push(233);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 499
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
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(2043);
    ref.push(2043);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(351);
    ref.push(351);

//len_list: 132
//==============================


//==============================
    submit.push(9394);
    ref.push(9394);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
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
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(8481);
    ref.push(8481);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(8220);
    ref.push(8220);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(3630);
    ref.push(3630);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(2953);
    ref.push(2953);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.push(7961);
    ref.push(7961);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.push(7631);
    ref.push(7631);

//len_list: 127
//==============================


//==============================
    submit.push(2946);
    ref.push(2946);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(3230);
    ref.push(3230);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(7569);
    ref.push(7569);

//len_list: 129
//==============================


//==============================
    submit.push(9523);
    ref.push(9523);

//len_list: 130
//==============================


//==============================
    submit.push(9082);
    ref.push(9082);

//len_list: 131
//==============================


//==============================
    submit.push(2519);
    ref.push(2519);

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(4412);
    ref.push(4412);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(8038);
    ref.push(8038);

//len_list: 132
//==============================


//==============================
    submit.push(4014);
    ref.push(4014);

//len_list: 133
//==============================


//==============================
    submit.push(1043);
    ref.push(1043);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(8661);
    ref.push(8661);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 526
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
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4814);
    ref.push(4814);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 530
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
//num_require: 531
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
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
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
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(5670);
    ref.push(5670);

//len_list: 128
//==============================


//==============================
    submit.push(6191);
    ref.push(6191);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(9883);
    ref.push(9883);

//len_list: 129
//==============================


//==============================
    submit.push(4321);
    ref.push(4321);

//len_list: 130
//==============================


//==============================
    submit.push(3967);
    ref.push(3967);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(3566);
    ref.push(3566);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(8421);
    ref.push(8421);

//len_list: 133
//==============================


//==============================
    submit.push(4326);
    ref.push(4326);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(2777);
    ref.push(2777);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(1490);
    ref.push(1490);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(9501);
    ref.push(9501);

//len_list: 127
//==============================


//==============================
    submit.push(5223);
    ref.push(5223);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(5463);
    ref.push(5463);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    submit.push(4989);
    ref.push(4989);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(1833);
    ref.push(1833);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(5899);
    ref.push(5899);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(7447);
    ref.push(7447);

//len_list: 128
//==============================


//==============================
    submit.push(4263);
    ref.push(4263);

//len_list: 129
//==============================


//==============================
    submit.push(995);
    ref.push(995);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(4926);
    ref.push(4926);

//len_list: 130
//==============================


//==============================
    submit.push(6221);
    ref.push(6221);

//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(4891);
    ref.push(4891);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
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
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(2624);
    ref.push(2624);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(1392);
    ref.push(1392);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(7993);
    ref.push(7993);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(433);
    ref.push(433);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(6453);
    ref.push(6453);

//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(1091);
    ref.push(1091);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(9073);
    ref.push(9073);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(7799);
    ref.push(7799);

//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(9208);
    ref.push(9208);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(5155);
    ref.push(5155);

//len_list: 130
//==============================


//==============================
    submit.push(8425);
    ref.push(8425);

//len_list: 131
//==============================


//==============================
    submit.push(8221);
    ref.push(8221);

//len_list: 132
//==============================


//==============================
    submit.push(4409);
    ref.push(4409);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 608
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
    submit.push(8586);
    ref.push(8586);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(851);
    ref.push(851);

//len_list: 131
//==============================


//==============================
    submit.push(2132);
    ref.push(2132);

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(8161);
    ref.push(8161);

//len_list: 132
//==============================


//==============================
    submit.push(9972);
    ref.push(9972);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 614
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
    submit.push(9272);
    ref.push(9272);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 616
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
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(6167);
    ref.push(6167);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(9168);
    ref.push(9168);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 622
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.push(969);
    ref.push(969);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.push(1714);
    ref.push(1714);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(1018);
    ref.push(1018);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(290);
    ref.push(290);

//len_list: 126
//==============================


//==============================
    submit.push(6700);
    ref.push(6700);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.push(6957);
    ref.push(6957);

//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(9254);
    ref.push(9254);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(2490);
    ref.push(2490);

//len_list: 127
//==============================


//==============================
    submit.push(6020);
    ref.push(6020);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(1254);
    ref.push(1254);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(6438);
    ref.push(6438);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(7321);
    ref.push(7321);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(5484);
    ref.push(5484);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(1141);
    ref.push(1141);

//len_list: 129
//==============================


//==============================
    submit.push(6825);
    ref.push(6825);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(7216);
    ref.push(7216);

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
    submit.push(826);
    ref.push(826);

//len_list: 130
//==============================


//==============================
    submit.push(2566);
    ref.push(2566);

//len_list: 131
//==============================


//==============================
    submit.push(9715);
    ref.push(9715);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(9183);
    ref.push(9183);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 662
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
//num_require: 663
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
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(5363);
    ref.push(5363);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(3331);
    ref.push(3331);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 667
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
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(9029);
    ref.push(9029);

//len_list: 130
//==============================


//==============================
    submit.push(7374);
    ref.push(7374);

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
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
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
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(6256);
    ref.push(6256);

//len_list: 129
//==============================


//==============================
    submit.push(1928);
    ref.push(1928);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.push(4097);
    ref.push(4097);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    submit.push(5617);
    ref.push(5617);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(3912);
    ref.push(3912);

//len_list: 129
//==============================


//==============================
    submit.push(5769);
    ref.push(5769);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(8528);
    ref.push(8528);

//len_list: 131
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 130
//==============================


//==============================
    submit.push(5539);
    ref.push(5539);

//len_list: 131
//==============================


//==============================
    submit.push(9513);
    ref.push(9513);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(477);
    ref.push(477);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.push(5730);
    ref.push(5730);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 682
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
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(7183);
    ref.push(7183);

//len_list: 133
//==============================


//==============================
    submit.push(7864);
    ref.push(7864);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(7491);
    ref.push(7491);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(6616);
    ref.push(6616);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(5987);
    ref.push(5987);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    submit.push(2891);
    ref.push(2891);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(8189);
    ref.push(8189);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(772);
    ref.push(772);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 707
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
    submit.push(1295);
    ref.push(1295);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(5763);
    ref.push(5763);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(2219);
    ref.push(2219);

//len_list: 133
//==============================


//==============================
    submit.push(2047);
    ref.push(2047);

//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 715
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
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(4636);
    ref.push(4636);

//len_list: 133
//==============================


//==============================
    submit.push(9009);
    ref.push(9009);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    submit.push(8828);
    ref.push(8828);

//len_list: 129
//==============================


//==============================
    submit.push(1694);
    ref.push(1694);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(3710);
    ref.push(3710);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(3916);
    ref.push(3916);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 724
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
    submit.push(4062);
    ref.push(4062);

//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(7317);
    ref.push(7317);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(1252);
    ref.push(1252);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(8425);
    ref.push(8425);

//len_list: 132
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 131
//==============================


//==============================
    submit.push(8143);
    ref.push(8143);

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
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(7576);
    ref.push(7576);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(8107);
    ref.push(8107);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(3865);
    ref.push(3865);

//len_list: 134
//==============================


//==============================
    submit.push(3884);
    ref.push(3884);

//len_list: 135
//==============================


//==============================
    submit.push(9827);
    ref.push(9827);

//len_list: 136
//==============================


//==============================
    submit.push(3917);
    ref.push(3917);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(6290);
    ref.push(6290);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(8755);
    ref.push(8755);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(9655);
    ref.push(9655);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(3020);
    ref.push(3020);

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
//num_require: 742
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
    submit.push(2834);
    ref.push(2834);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(5452);
    ref.push(5452);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(1107);
    ref.push(1107);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
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
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 754
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
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(2231);
    ref.push(2231);

//len_list: 133
//==============================


//==============================
    submit.push(2611);
    ref.push(2611);

//len_list: 134
//==============================


//==============================
    submit.push(1768);
    ref.push(1768);

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
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(1658);
    ref.push(1658);

//len_list: 135
//==============================


//==============================
    submit.push(4503);
    ref.push(4503);

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
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(923);
    ref.push(923);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(206);
    ref.push(206);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 766
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
    submit.pop();
    ref.pop();

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(1795);
    ref.push(1795);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(2121);
    ref.push(2121);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(354);
    ref.push(354);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(5064);
    ref.push(5064);

//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(7269);
    ref.push(7269);

//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 775
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
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(481);
    ref.push(481);

//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(2649);
    ref.push(2649);

//len_list: 136
//==============================


//==============================
    submit.push(5415);
    ref.push(5415);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 780
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 781
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
//num_require: 782
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
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(8979);
    ref.push(8979);

//len_list: 134
//==============================


//==============================
    submit.push(7203);
    ref.push(7203);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(4500);
    ref.push(4500);

//len_list: 135
//==============================


//==============================
    submit.push(2404);
    ref.push(2404);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(4091);
    ref.push(4091);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(5973);
    ref.push(5973);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(637);
    ref.push(637);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 807
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
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(8402);
    ref.push(8402);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 816
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
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(1787);
    ref.push(1787);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(4107);
    ref.push(4107);

//len_list: 137
//==============================


//==============================
    submit.push(3922);
    ref.push(3922);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    submit.push(637);
    ref.push(637);

//len_list: 139
//==============================


//==============================
    submit.push(7536);
    ref.push(7536);

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
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    submit.push(1656);
    ref.push(1656);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(7257);
    ref.push(7257);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(7589);
    ref.push(7589);

//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(594);
    ref.push(594);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(1131);
    ref.push(1131);

//len_list: 142
//==============================


//==============================
    submit.push(6831);
    ref.push(6831);

//len_list: 143
//==============================


//==============================
    submit.push(2627);
    ref.push(2627);

//len_list: 144
//==============================


//==============================
    submit.push(5210);
    ref.push(5210);

//len_list: 145
//==============================


//==============================
    submit.push(4295);
    ref.push(4295);

//len_list: 146
//==============================


//==============================
    submit.push(6101);
    ref.push(6101);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(9425);
    ref.push(9425);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(5476);
    ref.push(5476);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(3536);
    ref.push(3536);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 835
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(2080);
    ref.push(2080);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(8783);
    ref.push(8783);

//len_list: 144
//==============================


//==============================
    submit.push(8557);
    ref.push(8557);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(7233);
    ref.push(7233);

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
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(8069);
    ref.push(8069);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(4296);
    ref.push(4296);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6146);
    ref.push(6146);

//len_list: 144
//==============================


//==============================
    submit.push(6716);
    ref.push(6716);

//len_list: 145
//==============================


//==============================
    submit.push(6546);
    ref.push(6546);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(1955);
    ref.push(1955);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 856
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
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(9444);
    ref.push(9444);

//len_list: 147
//==============================


//==============================
    submit.push(249);
    ref.push(249);

//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(6740);
    ref.push(6740);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(3910);
    ref.push(3910);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(7982);
    ref.push(7982);

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(8108);
    ref.push(8108);

//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 871
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
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(2219);
    ref.push(2219);

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
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(5997);
    ref.push(5997);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(2299);
    ref.push(2299);

//len_list: 143
//==============================


//==============================
    submit.push(2319);
    ref.push(2319);

//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(517);
    ref.push(517);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 876
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
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(5330);
    ref.push(5330);

//len_list: 143
//==============================


//==============================
    submit.push(2522);
    ref.push(2522);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(6506);
    ref.push(6506);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(3954);
    ref.push(3954);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(4325);
    ref.push(4325);

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(1992);
    ref.push(1992);

//len_list: 143
//==============================


//==============================
    submit.push(3071);
    ref.push(3071);

//len_list: 144
//==============================


//==============================
    submit.push(8757);
    ref.push(8757);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(2828);
    ref.push(2828);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(7067);
    ref.push(7067);

//len_list: 146
//==============================


//==============================
    submit.push(5968);
    ref.push(5968);

//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(6948);
    ref.push(6948);

//len_list: 146
//==============================


//==============================
    submit.push(4911);
    ref.push(4911);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(3720);
    ref.push(3720);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 904
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
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(5897);
    ref.push(5897);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(8324);
    ref.push(8324);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(4080);
    ref.push(4080);

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    submit.push(1317);
    ref.push(1317);

//len_list: 149
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 149
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(1930);
    ref.push(1930);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 914
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
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


}
