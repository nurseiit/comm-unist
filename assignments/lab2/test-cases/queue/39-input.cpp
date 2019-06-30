
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (229,1530)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(229)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5087);
    ref.push(5087);

//len_list: 1
//==============================


//==============================
    submit.push(5942);
    ref.push(5942);

//len_list: 2
//==============================


//==============================
    submit.push(2012);
    ref.push(2012);

//len_list: 3
//==============================


//==============================
    submit.push(8956);
    ref.push(8956);

//len_list: 4
//==============================


//==============================
    submit.push(598);
    ref.push(598);

//len_list: 5
//==============================


//==============================
    submit.push(6986);
    ref.push(6986);

//len_list: 6
//==============================


//==============================
    submit.push(9405);
    ref.push(9405);

//len_list: 7
//==============================


//==============================
    submit.push(3146);
    ref.push(3146);

//len_list: 8
//==============================


//==============================
    submit.push(9393);
    ref.push(9393);

//len_list: 9
//==============================


//==============================
    submit.push(7601);
    ref.push(7601);

//len_list: 10
//==============================


//==============================
    submit.push(1857);
    ref.push(1857);

//len_list: 11
//==============================


//==============================
    submit.push(4903);
    ref.push(4903);

//len_list: 12
//==============================


//==============================
    submit.push(3038);
    ref.push(3038);

//len_list: 13
//==============================


//==============================
    submit.push(688);
    ref.push(688);

//len_list: 14
//==============================


//==============================
    submit.push(832);
    ref.push(832);

//len_list: 15
//==============================


//==============================
    submit.push(4275);
    ref.push(4275);

//len_list: 16
//==============================


//==============================
    submit.push(6182);
    ref.push(6182);

//len_list: 17
//==============================


//==============================
    submit.push(5476);
    ref.push(5476);

//len_list: 18
//==============================


//==============================
    submit.push(4435);
    ref.push(4435);

//len_list: 19
//==============================


//==============================
    submit.push(2183);
    ref.push(2183);

//len_list: 20
//==============================


//==============================
    submit.push(6720);
    ref.push(6720);

//len_list: 21
//==============================


//==============================
    submit.push(6621);
    ref.push(6621);

//len_list: 22
//==============================


//==============================
    submit.push(6009);
    ref.push(6009);

//len_list: 23
//==============================


//==============================
    submit.push(8674);
    ref.push(8674);

//len_list: 24
//==============================


//==============================
    submit.push(3732);
    ref.push(3732);

//len_list: 25
//==============================


//==============================
    submit.push(518);
    ref.push(518);

//len_list: 26
//==============================


//==============================
    submit.push(9106);
    ref.push(9106);

//len_list: 27
//==============================


//==============================
    submit.push(2462);
    ref.push(2462);

//len_list: 28
//==============================


//==============================
    submit.push(341);
    ref.push(341);

//len_list: 29
//==============================


//==============================
    submit.push(4195);
    ref.push(4195);

//len_list: 30
//==============================


//==============================
    submit.push(2234);
    ref.push(2234);

//len_list: 31
//==============================


//==============================
    submit.push(9923);
    ref.push(9923);

//len_list: 32
//==============================


//==============================
    submit.push(4259);
    ref.push(4259);

//len_list: 33
//==============================


//==============================
    submit.push(4119);
    ref.push(4119);

//len_list: 34
//==============================


//==============================
    submit.push(817);
    ref.push(817);

//len_list: 35
//==============================


//==============================
    submit.push(4827);
    ref.push(4827);

//len_list: 36
//==============================


//==============================
    submit.push(9238);
    ref.push(9238);

//len_list: 37
//==============================


//==============================
    submit.push(5607);
    ref.push(5607);

//len_list: 38
//==============================


//==============================
    submit.push(2268);
    ref.push(2268);

//len_list: 39
//==============================


//==============================
    submit.push(8298);
    ref.push(8298);

//len_list: 40
//==============================


//==============================
    submit.push(2653);
    ref.push(2653);

//len_list: 41
//==============================


//==============================
    submit.push(4327);
    ref.push(4327);

//len_list: 42
//==============================


//==============================
    submit.push(6964);
    ref.push(6964);

//len_list: 43
//==============================


//==============================
    submit.push(7579);
    ref.push(7579);

//len_list: 44
//==============================


//==============================
    submit.push(8726);
    ref.push(8726);

//len_list: 45
//==============================


//==============================
    submit.push(5165);
    ref.push(5165);

//len_list: 46
//==============================


//==============================
    submit.push(9601);
    ref.push(9601);

//len_list: 47
//==============================


//==============================
    submit.push(847);
    ref.push(847);

//len_list: 48
//==============================


//==============================
    submit.push(216);
    ref.push(216);

//len_list: 49
//==============================


//==============================
    submit.push(9522);
    ref.push(9522);

//len_list: 50
//==============================


//==============================
    submit.push(3868);
    ref.push(3868);

//len_list: 51
//==============================


//==============================
    submit.push(4757);
    ref.push(4757);

//len_list: 52
//==============================


//==============================
    submit.push(408);
    ref.push(408);

//len_list: 53
//==============================


//==============================
    submit.push(4708);
    ref.push(4708);

//len_list: 54
//==============================


//==============================
    submit.push(9148);
    ref.push(9148);

//len_list: 55
//==============================


//==============================
    submit.push(7438);
    ref.push(7438);

//len_list: 56
//==============================


//==============================
    submit.push(5872);
    ref.push(5872);

//len_list: 57
//==============================


//==============================
    submit.push(2048);
    ref.push(2048);

//len_list: 58
//==============================


//==============================
    submit.push(700);
    ref.push(700);

//len_list: 59
//==============================


//==============================
    submit.push(1604);
    ref.push(1604);

//len_list: 60
//==============================


//==============================
    submit.push(5632);
    ref.push(5632);

//len_list: 61
//==============================


//==============================
    submit.push(8462);
    ref.push(8462);

//len_list: 62
//==============================


//==============================
    submit.push(7280);
    ref.push(7280);

//len_list: 63
//==============================


//==============================
    submit.push(5852);
    ref.push(5852);

//len_list: 64
//==============================


//==============================
    submit.push(8589);
    ref.push(8589);

//len_list: 65
//==============================


//==============================
    submit.push(1991);
    ref.push(1991);

//len_list: 66
//==============================


//==============================
    submit.push(5523);
    ref.push(5523);

//len_list: 67
//==============================


//==============================
    submit.push(3765);
    ref.push(3765);

//len_list: 68
//==============================


//==============================
    submit.push(831);
    ref.push(831);

//len_list: 69
//==============================


//==============================
    submit.push(3988);
    ref.push(3988);

//len_list: 70
//==============================


//==============================
    submit.push(8015);
    ref.push(8015);

//len_list: 71
//==============================


//==============================
    submit.push(1637);
    ref.push(1637);

//len_list: 72
//==============================


//==============================
    submit.push(8597);
    ref.push(8597);

//len_list: 73
//==============================


//==============================
    submit.push(3454);
    ref.push(3454);

//len_list: 74
//==============================


//==============================
    submit.push(9774);
    ref.push(9774);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(7695);
    ref.push(7695);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4991);
    ref.push(4991);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(2357);
    ref.push(2357);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(3842);
    ref.push(3842);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(9962);
    ref.push(9962);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(8152);
    ref.push(8152);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(6428);
    ref.push(6428);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(950);
    ref.push(950);

//len_list: 75
//==============================


//==============================
    submit.push(4108);
    ref.push(4108);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(1689);
    ref.push(1689);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(6693);
    ref.push(6693);

//len_list: 76
//==============================


//==============================
    submit.push(6129);
    ref.push(6129);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(162);
    ref.push(162);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4509);
    ref.push(4509);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(2097);
    ref.push(2097);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4832);
    ref.push(4832);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(2182);
    ref.push(2182);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(7332);
    ref.push(7332);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(3343);
    ref.push(3343);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(4597);
    ref.push(4597);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(272);
    ref.push(272);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(4966);
    ref.push(4966);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(7728);
    ref.push(7728);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(5060);
    ref.push(5060);

//len_list: 78
//==============================


//==============================
    submit.push(9700);
    ref.push(9700);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(3641);
    ref.push(3641);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(501);
    ref.push(501);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(1277);
    ref.push(1277);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(6377);
    ref.push(6377);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(6678);
    ref.push(6678);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(893);
    ref.push(893);

//len_list: 80
//==============================


//==============================
    submit.push(8967);
    ref.push(8967);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(9625);
    ref.push(9625);

//len_list: 81
//==============================


//==============================
    submit.push(9429);
    ref.push(9429);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(668);
    ref.push(668);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8211);
    ref.push(8211);

//len_list: 83
//==============================


//==============================
    submit.push(9706);
    ref.push(9706);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(7107);
    ref.push(7107);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(7092);
    ref.push(7092);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(7551);
    ref.push(7551);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(538);
    ref.push(538);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(6182);
    ref.push(6182);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(9887);
    ref.push(9887);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(4091);
    ref.push(4091);

//len_list: 83
//==============================


//==============================
    submit.push(462);
    ref.push(462);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(6947);
    ref.push(6947);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(7813);
    ref.push(7813);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(5952);
    ref.push(5952);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(1870);
    ref.push(1870);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(2928);
    ref.push(2928);

//len_list: 78
//==============================


//==============================
    submit.push(6807);
    ref.push(6807);

//len_list: 79
//==============================


//==============================
    submit.push(5121);
    ref.push(5121);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(7789);
    ref.push(7789);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(5968);
    ref.push(5968);

//len_list: 78
//==============================


//==============================
    submit.push(9691);
    ref.push(9691);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(80);
    ref.push(80);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(6398);
    ref.push(6398);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(1399);
    ref.push(1399);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1818);
    ref.push(1818);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(6425);
    ref.push(6425);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(1625);
    ref.push(1625);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(7281);
    ref.push(7281);

//len_list: 75
//==============================


//==============================
    submit.push(3844);
    ref.push(3844);

//len_list: 76
//==============================


//==============================
    submit.push(7471);
    ref.push(7471);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8315);
    ref.push(8315);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(2805);
    ref.push(2805);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(9233);
    ref.push(9233);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(4409);
    ref.push(4409);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(2892);
    ref.push(2892);

//len_list: 76
//==============================


//==============================
    submit.push(1334);
    ref.push(1334);

//len_list: 77
//==============================


//==============================
    submit.push(369);
    ref.push(369);

//len_list: 78
//==============================


//==============================
    submit.push(6018);
    ref.push(6018);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(9391);
    ref.push(9391);

//len_list: 80
//==============================


//==============================
    submit.push(8196);
    ref.push(8196);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(2244);
    ref.push(2244);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(3363);
    ref.push(3363);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(4735);
    ref.push(4735);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(1455);
    ref.push(1455);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(7898);
    ref.push(7898);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(5574);
    ref.push(5574);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(96);
    ref.push(96);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(6171);
    ref.push(6171);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(3490);
    ref.push(3490);

//len_list: 81
//==============================


//==============================
    submit.push(780);
    ref.push(780);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(716);
    ref.push(716);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(2013);
    ref.push(2013);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(4338);
    ref.push(4338);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5221);
    ref.push(5221);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3818);
    ref.push(3818);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(2516);
    ref.push(2516);

//len_list: 83
//==============================


//==============================
    submit.push(9246);
    ref.push(9246);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(259);
    ref.push(259);

//len_list: 85
//==============================


//==============================
    submit.push(4119);
    ref.push(4119);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(1419);
    ref.push(1419);

//len_list: 87
//==============================


//==============================
    submit.push(4754);
    ref.push(4754);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(8225);
    ref.push(8225);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5436);
    ref.push(5436);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(2752);
    ref.push(2752);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(885);
    ref.push(885);

//len_list: 80
//==============================


//==============================
    submit.push(7176);
    ref.push(7176);

//len_list: 81
//==============================


//==============================
    submit.push(378);
    ref.push(378);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(1602);
    ref.push(1602);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(5577);
    ref.push(5577);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(5039);
    ref.push(5039);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(52);
    ref.push(52);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(3088);
    ref.push(3088);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(1486);
    ref.push(1486);

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(6496);
    ref.push(6496);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(2846);
    ref.push(2846);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(2805);
    ref.push(2805);

//len_list: 79
//==============================


//==============================
    submit.push(9564);
    ref.push(9564);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(1180);
    ref.push(1180);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(4305);
    ref.push(4305);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(1858);
    ref.push(1858);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4352);
    ref.push(4352);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4158);
    ref.push(4158);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(7789);
    ref.push(7789);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(1246);
    ref.push(1246);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4906);
    ref.push(4906);

//len_list: 75
//==============================


//==============================
    submit.push(9179);
    ref.push(9179);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(3310);
    ref.push(3310);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(9143);
    ref.push(9143);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(6065);
    ref.push(6065);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4510);
    ref.push(4510);

//len_list: 75
//==============================


//==============================
    submit.push(7022);
    ref.push(7022);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(1945);
    ref.push(1945);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(4054);
    ref.push(4054);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(6092);
    ref.push(6092);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(5222);
    ref.push(5222);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(8434);
    ref.push(8434);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(615);
    ref.push(615);

//len_list: 75
//==============================


//==============================
    submit.push(5468);
    ref.push(5468);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(3720);
    ref.push(3720);

//len_list: 77
//==============================


//==============================
    submit.push(9384);
    ref.push(9384);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(3063);
    ref.push(3063);

//len_list: 77
//==============================


//==============================
    submit.push(134);
    ref.push(134);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(3523);
    ref.push(3523);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(1183);
    ref.push(1183);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(6253);
    ref.push(6253);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(635);
    ref.push(635);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8159);
    ref.push(8159);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5778);
    ref.push(5778);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(6955);
    ref.push(6955);

//len_list: 83
//==============================


//==============================
    submit.push(1007);
    ref.push(1007);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5091);
    ref.push(5091);

//len_list: 84
//==============================


//==============================
    submit.push(3671);
    ref.push(3671);

//len_list: 85
//==============================


//==============================
    submit.push(8648);
    ref.push(8648);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(9577);
    ref.push(9577);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(1944);
    ref.push(1944);

//len_list: 85
//==============================


//==============================
    submit.push(5536);
    ref.push(5536);

//len_list: 86
//==============================


//==============================
    submit.push(5290);
    ref.push(5290);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(6632);
    ref.push(6632);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(2597);
    ref.push(2597);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(3214);
    ref.push(3214);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(2373);
    ref.push(2373);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(2185);
    ref.push(2185);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(4772);
    ref.push(4772);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(594);
    ref.push(594);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(9425);
    ref.push(9425);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(129);
    ref.push(129);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(8078);
    ref.push(8078);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(514);
    ref.push(514);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(4403);
    ref.push(4403);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5190);
    ref.push(5190);

//len_list: 86
//==============================


//==============================
    submit.push(1770);
    ref.push(1770);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(5684);
    ref.push(5684);

//len_list: 88
//==============================


//==============================
    submit.push(4397);
    ref.push(4397);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(7279);
    ref.push(7279);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1418);
    ref.push(1418);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(110);
    ref.push(110);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(6312);
    ref.push(6312);

//len_list: 88
//==============================


//==============================
    submit.push(2586);
    ref.push(2586);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(325);
    ref.push(325);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(3272);
    ref.push(3272);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(1151);
    ref.push(1151);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(9701);
    ref.push(9701);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(1782);
    ref.push(1782);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(2587);
    ref.push(2587);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3930);
    ref.push(3930);

//len_list: 84
//==============================


//==============================
    submit.push(7954);
    ref.push(7954);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(6495);
    ref.push(6495);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(4102);
    ref.push(4102);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(1426);
    ref.push(1426);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(128);
    ref.push(128);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(8580);
    ref.push(8580);

//len_list: 86
//==============================


//==============================
    submit.push(1443);
    ref.push(1443);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(7869);
    ref.push(7869);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(4766);
    ref.push(4766);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(9182);
    ref.push(9182);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(1726);
    ref.push(1726);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9204);
    ref.push(9204);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(2142);
    ref.push(2142);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(5087);
    ref.push(5087);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(1350);
    ref.push(1350);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(1349);
    ref.push(1349);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(6783);
    ref.push(6783);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(9206);
    ref.push(9206);

//len_list: 93
//==============================


//==============================
    submit.push(1465);
    ref.push(1465);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(271);
    ref.push(271);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(1823);
    ref.push(1823);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(3940);
    ref.push(3940);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(9053);
    ref.push(9053);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(5848);
    ref.push(5848);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6023);
    ref.push(6023);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.push(5335);
    ref.push(5335);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(4533);
    ref.push(4533);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(2380);
    ref.push(2380);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(9438);
    ref.push(9438);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(184);
    ref.push(184);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(5351);
    ref.push(5351);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(1283);
    ref.push(1283);

//len_list: 87
//==============================


//==============================
    submit.push(8082);
    ref.push(8082);

//len_list: 88
//==============================


//==============================
    submit.push(9523);
    ref.push(9523);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(7650);
    ref.push(7650);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(184);
    ref.push(184);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(7353);
    ref.push(7353);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(1239);
    ref.push(1239);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6779);
    ref.push(6779);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.push(7421);
    ref.push(7421);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(8817);
    ref.push(8817);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8645);
    ref.push(8645);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(598);
    ref.push(598);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3129);
    ref.push(3129);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8899);
    ref.push(8899);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(1972);
    ref.push(1972);

//len_list: 90
//==============================


//==============================
    submit.push(4004);
    ref.push(4004);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(5752);
    ref.push(5752);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8381);
    ref.push(8381);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(5727);
    ref.push(5727);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(4064);
    ref.push(4064);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(3059);
    ref.push(3059);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(2534);
    ref.push(2534);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(5562);
    ref.push(5562);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8209);
    ref.push(8209);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(5668);
    ref.push(5668);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(6568);
    ref.push(6568);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.push(8217);
    ref.push(8217);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.push(2624);
    ref.push(2624);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.push(448);
    ref.push(448);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(9236);
    ref.push(9236);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(634);
    ref.push(634);

//len_list: 90
//==============================


//==============================
    submit.push(8279);
    ref.push(8279);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(9264);
    ref.push(9264);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(323);
    ref.push(323);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(3712);
    ref.push(3712);

//len_list: 90
//==============================


//==============================
    submit.push(1408);
    ref.push(1408);

//len_list: 91
//==============================


//==============================
    submit.push(6485);
    ref.push(6485);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(516);
    ref.push(516);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(4760);
    ref.push(4760);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(8375);
    ref.push(8375);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(3929);
    ref.push(3929);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(9109);
    ref.push(9109);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(1685);
    ref.push(1685);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(1833);
    ref.push(1833);

//len_list: 93
//==============================


//==============================
    submit.push(6767);
    ref.push(6767);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(1359);
    ref.push(1359);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(4181);
    ref.push(4181);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6114);
    ref.push(6114);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(1132);
    ref.push(1132);

//len_list: 96
//==============================


//==============================
    submit.push(9998);
    ref.push(9998);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(8265);
    ref.push(8265);

//len_list: 97
//==============================


//==============================
    submit.push(2577);
    ref.push(2577);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(9062);
    ref.push(9062);

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
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(4044);
    ref.push(4044);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 754
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
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(45);
    ref.push(45);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 760
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
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(2668);
    ref.push(2668);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(346);
    ref.push(346);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(1694);
    ref.push(1694);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(6840);
    ref.push(6840);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9191);
    ref.push(9191);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1778);
    ref.push(1778);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(554);
    ref.push(554);

//len_list: 87
//==============================


//==============================
    submit.push(8081);
    ref.push(8081);

//len_list: 88
//==============================


//==============================
    submit.push(5562);
    ref.push(5562);

//len_list: 89
//==============================


//==============================
    submit.push(5639);
    ref.push(5639);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(1089);
    ref.push(1089);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.push(2365);
    ref.push(2365);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(7136);
    ref.push(7136);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(9979);
    ref.push(9979);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(4747);
    ref.push(4747);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(3946);
    ref.push(3946);

//len_list: 88
//==============================


//==============================
    submit.push(6273);
    ref.push(6273);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(5286);
    ref.push(5286);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(6581);
    ref.push(6581);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(5465);
    ref.push(5465);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(868);
    ref.push(868);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(8847);
    ref.push(8847);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(9009);
    ref.push(9009);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(4672);
    ref.push(4672);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(4993);
    ref.push(4993);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(1076);
    ref.push(1076);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(692);
    ref.push(692);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(6771);
    ref.push(6771);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(837);
    ref.push(837);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(5821);
    ref.push(5821);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.push(9437);
    ref.push(9437);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(280);
    ref.push(280);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(2227);
    ref.push(2227);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(1073);
    ref.push(1073);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(1854);
    ref.push(1854);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(2593);
    ref.push(2593);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(9381);
    ref.push(9381);

//len_list: 93
//==============================


//==============================
    submit.push(7823);
    ref.push(7823);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(9032);
    ref.push(9032);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9407);
    ref.push(9407);

//len_list: 95
//==============================


}
