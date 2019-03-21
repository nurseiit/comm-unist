
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (204,962)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(1628);
    ref.push(1628);

//len_list: 1
//==============================


//==============================
    submit.push(2506);
    ref.push(2506);

//len_list: 2
//==============================


//==============================
    submit.push(4524);
    ref.push(4524);

//len_list: 3
//==============================


//==============================
    submit.push(848);
    ref.push(848);

//len_list: 4
//==============================


//==============================
    submit.push(8918);
    ref.push(8918);

//len_list: 5
//==============================


//==============================
    submit.push(2394);
    ref.push(2394);

//len_list: 6
//==============================


//==============================
    submit.push(8955);
    ref.push(8955);

//len_list: 7
//==============================


//==============================
    submit.push(3072);
    ref.push(3072);

//len_list: 8
//==============================


//==============================
    submit.push(5160);
    ref.push(5160);

//len_list: 9
//==============================


//==============================
    submit.push(4137);
    ref.push(4137);

//len_list: 10
//==============================


//==============================
    submit.push(7929);
    ref.push(7929);

//len_list: 11
//==============================


//==============================
    submit.push(9120);
    ref.push(9120);

//len_list: 12
//==============================


//==============================
    submit.push(6803);
    ref.push(6803);

//len_list: 13
//==============================


//==============================
    submit.push(8790);
    ref.push(8790);

//len_list: 14
//==============================


//==============================
    submit.push(6356);
    ref.push(6356);

//len_list: 15
//==============================


//==============================
    submit.push(9276);
    ref.push(9276);

//len_list: 16
//==============================


//==============================
    submit.push(948);
    ref.push(948);

//len_list: 17
//==============================


//==============================
    submit.push(6752);
    ref.push(6752);

//len_list: 18
//==============================


//==============================
    submit.push(3399);
    ref.push(3399);

//len_list: 19
//==============================


//==============================
    submit.push(2881);
    ref.push(2881);

//len_list: 20
//==============================


//==============================
    submit.push(6452);
    ref.push(6452);

//len_list: 21
//==============================


//==============================
    submit.push(4933);
    ref.push(4933);

//len_list: 22
//==============================


//==============================
    submit.push(6476);
    ref.push(6476);

//len_list: 23
//==============================


//==============================
    submit.push(1163);
    ref.push(1163);

//len_list: 24
//==============================


//==============================
    submit.push(1307);
    ref.push(1307);

//len_list: 25
//==============================


//==============================
    submit.push(6944);
    ref.push(6944);

//len_list: 26
//==============================


//==============================
    submit.push(7070);
    ref.push(7070);

//len_list: 27
//==============================


//==============================
    submit.push(2097);
    ref.push(2097);

//len_list: 28
//==============================


//==============================
    submit.push(7749);
    ref.push(7749);

//len_list: 29
//==============================


//==============================
    submit.push(8209);
    ref.push(8209);

//len_list: 30
//==============================


//==============================
    submit.push(8031);
    ref.push(8031);

//len_list: 31
//==============================


//==============================
    submit.push(9318);
    ref.push(9318);

//len_list: 32
//==============================


//==============================
    submit.push(6640);
    ref.push(6640);

//len_list: 33
//==============================


//==============================
    submit.push(2356);
    ref.push(2356);

//len_list: 34
//==============================


//==============================
    submit.push(7889);
    ref.push(7889);

//len_list: 35
//==============================


//==============================
    submit.push(6034);
    ref.push(6034);

//len_list: 36
//==============================


//==============================
    submit.push(9241);
    ref.push(9241);

//len_list: 37
//==============================


//==============================
    submit.push(9383);
    ref.push(9383);

//len_list: 38
//==============================


//==============================
    submit.push(447);
    ref.push(447);

//len_list: 39
//==============================


//==============================
    submit.push(1223);
    ref.push(1223);

//len_list: 40
//==============================


//==============================
    submit.push(1392);
    ref.push(1392);

//len_list: 41
//==============================


//==============================
    submit.push(8783);
    ref.push(8783);

//len_list: 42
//==============================


//==============================
    submit.push(2509);
    ref.push(2509);

//len_list: 43
//==============================


//==============================
    submit.push(6104);
    ref.push(6104);

//len_list: 44
//==============================


//==============================
    submit.push(3493);
    ref.push(3493);

//len_list: 45
//==============================


//==============================
    submit.push(4683);
    ref.push(4683);

//len_list: 46
//==============================


//==============================
    submit.push(5628);
    ref.push(5628);

//len_list: 47
//==============================


//==============================
    submit.push(6829);
    ref.push(6829);

//len_list: 48
//==============================


//==============================
    submit.push(3688);
    ref.push(3688);

//len_list: 49
//==============================


//==============================
    submit.push(2586);
    ref.push(2586);

//len_list: 50
//==============================


//==============================
    submit.push(3657);
    ref.push(3657);

//len_list: 51
//==============================


//==============================
    submit.push(9121);
    ref.push(9121);

//len_list: 52
//==============================


//==============================
    submit.push(2679);
    ref.push(2679);

//len_list: 53
//==============================


//==============================
    submit.push(4675);
    ref.push(4675);

//len_list: 54
//==============================


//==============================
    submit.push(1832);
    ref.push(1832);

//len_list: 55
//==============================


//==============================
    submit.push(9967);
    ref.push(9967);

//len_list: 56
//==============================


//==============================
    submit.push(3285);
    ref.push(3285);

//len_list: 57
//==============================


//==============================
    submit.push(4438);
    ref.push(4438);

//len_list: 58
//==============================


//==============================
    submit.push(2563);
    ref.push(2563);

//len_list: 59
//==============================


//==============================
    submit.push(734);
    ref.push(734);

//len_list: 60
//==============================


//==============================
    submit.push(6033);
    ref.push(6033);

//len_list: 61
//==============================


//==============================
    submit.push(4481);
    ref.push(4481);

//len_list: 62
//==============================


//==============================
    submit.push(6784);
    ref.push(6784);

//len_list: 63
//==============================


//==============================
    submit.push(2836);
    ref.push(2836);

//len_list: 64
//==============================


//==============================
    submit.push(2108);
    ref.push(2108);

//len_list: 65
//==============================


//==============================
    submit.push(5706);
    ref.push(5706);

//len_list: 66
//==============================


//==============================
    submit.push(3068);
    ref.push(3068);

//len_list: 67
//==============================


//==============================
    submit.push(4867);
    ref.push(4867);

//len_list: 68
//==============================


//==============================
    submit.push(863);
    ref.push(863);

//len_list: 69
//==============================


//==============================
    submit.push(2122);
    ref.push(2122);

//len_list: 70
//==============================


//==============================
    submit.push(8782);
    ref.push(8782);

//len_list: 71
//==============================


//==============================
    submit.push(3244);
    ref.push(3244);

//len_list: 72
//==============================


//==============================
    submit.push(760);
    ref.push(760);

//len_list: 73
//==============================


//==============================
    submit.push(6098);
    ref.push(6098);

//len_list: 74
//==============================


//==============================
    submit.push(8998);
    ref.push(8998);

//len_list: 75
//==============================


//==============================
    submit.push(8650);
    ref.push(8650);

//len_list: 76
//==============================


//==============================
    submit.push(535);
    ref.push(535);

//len_list: 77
//==============================


//==============================
    submit.push(6339);
    ref.push(6339);

//len_list: 78
//==============================


//==============================
    submit.push(1316);
    ref.push(1316);

//len_list: 79
//==============================


//==============================
    submit.push(1445);
    ref.push(1445);

//len_list: 80
//==============================


//==============================
    submit.push(5053);
    ref.push(5053);

//len_list: 81
//==============================


//==============================
    submit.push(7029);
    ref.push(7029);

//len_list: 82
//==============================


//==============================
    submit.push(5698);
    ref.push(5698);

//len_list: 83
//==============================


//==============================
    submit.push(1399);
    ref.push(1399);

//len_list: 84
//==============================


//==============================
    submit.push(868);
    ref.push(868);

//len_list: 85
//==============================


//==============================
    submit.push(3722);
    ref.push(3722);

//len_list: 86
//==============================


//==============================
    submit.push(5961);
    ref.push(5961);

//len_list: 87
//==============================


//==============================
    submit.push(1767);
    ref.push(1767);

//len_list: 88
//==============================


//==============================
    submit.push(6930);
    ref.push(6930);

//len_list: 89
//==============================


//==============================
    submit.push(1588);
    ref.push(1588);

//len_list: 90
//==============================


//==============================
    submit.push(3338);
    ref.push(3338);

//len_list: 91
//==============================


//==============================
    submit.push(4386);
    ref.push(4386);

//len_list: 92
//==============================


//==============================
    submit.push(7562);
    ref.push(7562);

//len_list: 93
//==============================


//==============================
    submit.push(3057);
    ref.push(3057);

//len_list: 94
//==============================


//==============================
    submit.push(1081);
    ref.push(1081);

//len_list: 95
//==============================


//==============================
    submit.push(5973);
    ref.push(5973);

//len_list: 96
//==============================


//==============================
    submit.push(694);
    ref.push(694);

//len_list: 97
//==============================


//==============================
    submit.push(8710);
    ref.push(8710);

//len_list: 98
//==============================


//==============================
    submit.push(2161);
    ref.push(2161);

//len_list: 99
//==============================


//==============================
    submit.push(628);
    ref.push(628);

//len_list: 100
//==============================


//==============================
    submit.push(4942);
    ref.push(4942);

//len_list: 101
//==============================


//==============================
    submit.push(9881);
    ref.push(9881);

//len_list: 102
//==============================


//==============================
    submit.push(5832);
    ref.push(5832);

//len_list: 103
//==============================


//==============================
    submit.push(3755);
    ref.push(3755);

//len_list: 104
//==============================


//==============================
    submit.push(3068);
    ref.push(3068);

//len_list: 105
//==============================


//==============================
    submit.push(1001);
    ref.push(1001);

//len_list: 106
//==============================


//==============================
    submit.push(9108);
    ref.push(9108);

//len_list: 107
//==============================


//==============================
    submit.push(4794);
    ref.push(4794);

//len_list: 108
//==============================


//==============================
    submit.push(5711);
    ref.push(5711);

//len_list: 109
//==============================


//==============================
    submit.push(4511);
    ref.push(4511);

//len_list: 110
//==============================


//==============================
    submit.push(9991);
    ref.push(9991);

//len_list: 111
//==============================


//==============================
    submit.push(7189);
    ref.push(7189);

//len_list: 112
//==============================


//==============================
    submit.push(8234);
    ref.push(8234);

//len_list: 113
//==============================


//==============================
    submit.push(6592);
    ref.push(6592);

//len_list: 114
//==============================


//==============================
    submit.push(1485);
    ref.push(1485);

//len_list: 115
//==============================


//==============================
    submit.push(9126);
    ref.push(9126);

//len_list: 116
//==============================


//==============================
    submit.push(8582);
    ref.push(8582);

//len_list: 117
//==============================


//==============================
    submit.push(8699);
    ref.push(8699);

//len_list: 118
//==============================


//==============================
    submit.push(3948);
    ref.push(3948);

//len_list: 119
//==============================


//==============================
    submit.push(8753);
    ref.push(8753);

//len_list: 120
//==============================


//==============================
    submit.push(9149);
    ref.push(9149);

//len_list: 121
//==============================


//==============================
    submit.push(8419);
    ref.push(8419);

//len_list: 122
//==============================


//==============================
    submit.push(2192);
    ref.push(2192);

//len_list: 123
//==============================


//==============================
    submit.push(8807);
    ref.push(8807);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(5122);
    ref.push(5122);

//len_list: 125
//==============================


//==============================
    submit.push(2130);
    ref.push(2130);

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
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(9704);
    ref.push(9704);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.push(6941);
    ref.push(6941);

//len_list: 126
//==============================


//==============================
    submit.push(1384);
    ref.push(1384);

//len_list: 127
//==============================


//==============================
    submit.push(2001);
    ref.push(2001);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(5457);
    ref.push(5457);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
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
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(6016);
    ref.push(6016);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(4248);
    ref.push(4248);

//len_list: 129
//==============================


//==============================
    submit.push(7537);
    ref.push(7537);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(6342);
    ref.push(6342);

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
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
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
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.push(6888);
    ref.push(6888);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 129
//==============================


//==============================
    submit.push(2448);
    ref.push(2448);

//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 130
//==============================


//==============================
    submit.push(1496);
    ref.push(1496);

//len_list: 131
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 131
//==============================


//==============================
    submit.push(8376);
    ref.push(8376);

//len_list: 132
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 132
//==============================


//==============================
    submit.push(548);
    ref.push(548);

//len_list: 133
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 132
//==============================


//==============================
    submit.push(7179);
    ref.push(7179);

//len_list: 133
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(9310);
    ref.push(9310);

//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
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
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(8557);
    ref.push(8557);

//len_list: 134
//==============================


//==============================
    submit.push(7288);
    ref.push(7288);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(4220);
    ref.push(4220);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(3947);
    ref.push(3947);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
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
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(8159);
    ref.push(8159);

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
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(7935);
    ref.push(7935);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
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
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
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
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(7754);
    ref.push(7754);

//len_list: 135
//==============================


//==============================
    submit.push(4228);
    ref.push(4228);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
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
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(9780);
    ref.push(9780);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 61
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
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 133
//==============================


//==============================
    submit.push(8494);
    ref.push(8494);

//len_list: 134
//==============================


//==============================
    submit.push(3178);
    ref.push(3178);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(2770);
    ref.push(2770);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(3812);
    ref.push(3812);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(3820);
    ref.push(3820);

//len_list: 137
//==============================


//==============================
    submit.push(6651);
    ref.push(6651);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(3381);
    ref.push(3381);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
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
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
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
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
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
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(8104);
    ref.push(8104);

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
    submit.push(3462);
    ref.push(3462);

//len_list: 136
//==============================


//==============================
    submit.push(5778);
    ref.push(5778);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
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
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(9896);
    ref.push(9896);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(2064);
    ref.push(2064);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(8899);
    ref.push(8899);

//len_list: 139
//==============================


//==============================
    submit.push(752);
    ref.push(752);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
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
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    submit.push(534);
    ref.push(534);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
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
    submit.push(6198);
    ref.push(6198);

//len_list: 135
//==============================


//==============================
    submit.push(486);
    ref.push(486);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(9146);
    ref.push(9146);

//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(5994);
    ref.push(5994);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
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
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(8163);
    ref.push(8163);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
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
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(1567);
    ref.push(1567);

//len_list: 137
//==============================


//==============================
    submit.push(3265);
    ref.push(3265);

//len_list: 138
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(8098);
    ref.push(8098);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(8814);
    ref.push(8814);

//len_list: 139
//==============================


//==============================
    submit.push(1985);
    ref.push(1985);

//len_list: 140
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    submit.push(5618);
    ref.push(5618);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(1463);
    ref.push(1463);

//len_list: 141
//==============================


//==============================
    submit.push(4400);
    ref.push(4400);

//len_list: 142
//==============================


//==============================
    submit.push(7504);
    ref.push(7504);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(8811);
    ref.push(8811);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 119
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(609);
    ref.push(609);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(543);
    ref.push(543);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(4819);
    ref.push(4819);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(33);
    ref.push(33);

//len_list: 141
//==============================


//==============================
    submit.push(7109);
    ref.push(7109);

//len_list: 142
//==============================


//==============================
    submit.push(4992);
    ref.push(4992);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(4113);
    ref.push(4113);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(5122);
    ref.push(5122);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
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
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(1674);
    ref.push(1674);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(5081);
    ref.push(5081);

//len_list: 141
//==============================


//==============================
    submit.push(5717);
    ref.push(5717);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(9195);
    ref.push(9195);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(7743);
    ref.push(7743);

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
//num_require: 154
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
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(4444);
    ref.push(4444);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
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
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(5351);
    ref.push(5351);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3228);
    ref.push(3228);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(6302);
    ref.push(6302);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(8562);
    ref.push(8562);

//len_list: 141
//==============================


//==============================
    submit.push(4019);
    ref.push(4019);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(2629);
    ref.push(2629);

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
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(5531);
    ref.push(5531);

//len_list: 143
//==============================


//==============================
    submit.push(7414);
    ref.push(7414);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(991);
    ref.push(991);

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
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(9760);
    ref.push(9760);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(7034);
    ref.push(7034);

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
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 180
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(6117);
    ref.push(6117);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 183
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
    submit.push(2741);
    ref.push(2741);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(3307);
    ref.push(3307);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(2735);
    ref.push(2735);

//len_list: 143
//==============================


//==============================
    submit.push(9992);
    ref.push(9992);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(5865);
    ref.push(5865);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(2601);
    ref.push(2601);

//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(275);
    ref.push(275);

//len_list: 144
//==============================


//==============================
    submit.push(7173);
    ref.push(7173);

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
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(4905);
    ref.push(4905);

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
//num_require: 200
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
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(128);
    ref.push(128);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
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
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(8640);
    ref.push(8640);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(7690);
    ref.push(7690);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(9979);
    ref.push(9979);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6152);
    ref.push(6152);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(7153);
    ref.push(7153);

//len_list: 145
//==============================


//==============================
    submit.push(963);
    ref.push(963);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(4326);
    ref.push(4326);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(8307);
    ref.push(8307);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(2334);
    ref.push(2334);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 146
//==============================


//==============================
    submit.push(84);
    ref.push(84);

//len_list: 147
//==============================


//==============================
    submit.push(6283);
    ref.push(6283);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
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
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(7391);
    ref.push(7391);

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(1765);
    ref.push(1765);

//len_list: 145
//==============================


//==============================
    submit.push(3551);
    ref.push(3551);

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
    submit.push(9200);
    ref.push(9200);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(8096);
    ref.push(8096);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(4045);
    ref.push(4045);

//len_list: 148
//==============================


//==============================
    submit.push(6699);
    ref.push(6699);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 232
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(3507);
    ref.push(3507);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(7889);
    ref.push(7889);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 234
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
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(9887);
    ref.push(9887);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(6517);
    ref.push(6517);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
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
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(1611);
    ref.push(1611);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(2749);
    ref.push(2749);

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(8242);
    ref.push(8242);

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
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6794);
    ref.push(6794);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(3473);
    ref.push(3473);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(5668);
    ref.push(5668);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(2970);
    ref.push(2970);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(1896);
    ref.push(1896);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(9859);
    ref.push(9859);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(4124);
    ref.push(4124);

//len_list: 147
//==============================


//==============================
    submit.push(9861);
    ref.push(9861);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
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
//num_require: 263
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
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(1936);
    ref.push(1936);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(7439);
    ref.push(7439);

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
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(4807);
    ref.push(4807);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(1587);
    ref.push(1587);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
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
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(9101);
    ref.push(9101);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    submit.push(8349);
    ref.push(8349);

//len_list: 146
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(5564);
    ref.push(5564);

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
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(7575);
    ref.push(7575);

//len_list: 144
//==============================


//==============================
    submit.push(7158);
    ref.push(7158);

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
    submit.push(4938);
    ref.push(4938);

//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(3631);
    ref.push(3631);

//len_list: 144
//==============================


//==============================
    submit.push(4092);
    ref.push(4092);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
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
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(1551);
    ref.push(1551);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(4924);
    ref.push(4924);

//len_list: 145
//==============================


//==============================
    submit.push(5339);
    ref.push(5339);

//len_list: 146
//==============================


//==============================
    submit.push(6848);
    ref.push(6848);

//len_list: 147
//==============================


//==============================
    submit.push(6387);
    ref.push(6387);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 148
//==============================


//==============================
    submit.push(4471);
    ref.push(4471);

//len_list: 149
//==============================


//==============================
    submit.push(5237);
    ref.push(5237);

//len_list: 150
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 150
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 294
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
//num_require: 295
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
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
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
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 143
//==============================


//==============================
    submit.push(4272);
    ref.push(4272);

//len_list: 144
//==============================


//==============================
    submit.push(7782);
    ref.push(7782);

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
    submit.push(9178);
    ref.push(9178);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(5594);
    ref.push(5594);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(6731);
    ref.push(6731);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(5952);
    ref.push(5952);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(674);
    ref.push(674);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 306
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
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(3323);
    ref.push(3323);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 309
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
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
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(6416);
    ref.push(6416);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(245);
    ref.push(245);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
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
    submit.pop();
    ref.pop();

//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 313
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
    submit.push(7869);
    ref.push(7869);

//len_list: 138
//==============================


//==============================
    submit.push(6998);
    ref.push(6998);

//len_list: 139
//==============================


//==============================
    submit.push(2764);
    ref.push(2764);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
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
//num_require: 315
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(8577);
    ref.push(8577);

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
    submit.push(5996);
    ref.push(5996);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    submit.pop();
    ref.pop();

//len_list: 135
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 134
//==============================


//==============================
    submit.push(7181);
    ref.push(7181);

//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(4795);
    ref.push(4795);

//len_list: 135
//==============================


//==============================
    submit.push(5646);
    ref.push(5646);

//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 136
//==============================


//==============================
    submit.push(225);
    ref.push(225);

//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(507);
    ref.push(507);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(2619);
    ref.push(2619);

//len_list: 137
//==============================


//==============================
    submit.push(7574);
    ref.push(7574);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 328
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
//num_require: 329
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
//num_require: 330
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
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 134
//==============================


//==============================
    submit.push(1010);
    ref.push(1010);

//len_list: 135
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 135
//==============================


//==============================
    submit.push(4141);
    ref.push(4141);

//len_list: 136
//==============================


//==============================
    submit.push(228);
    ref.push(228);

//len_list: 137
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 136
//==============================


//==============================
    submit.push(6282);
    ref.push(6282);

//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 137
//==============================


//==============================
    submit.push(9348);
    ref.push(9348);

//len_list: 138
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(1833);
    ref.push(1833);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(626);
    ref.push(626);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
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
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.push(9796);
    ref.push(9796);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3773);
    ref.push(3773);

//len_list: 141
//==============================


//==============================
    submit.push(6310);
    ref.push(6310);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(5436);
    ref.push(5436);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(1381);
    ref.push(1381);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(3759);
    ref.push(3759);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(4808);
    ref.push(4808);

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
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    submit.push(9593);
    ref.push(9593);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 357
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(1683);
    ref.push(1683);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3878);
    ref.push(3878);

//len_list: 141
//==============================


//==============================
    submit.push(2442);
    ref.push(2442);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(7983);
    ref.push(7983);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(6323);
    ref.push(6323);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 138
//==============================


//==============================
    submit.push(6931);
    ref.push(6931);

//len_list: 139
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 139
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 138
//==============================


//==============================
    submit.push(9452);
    ref.push(9452);

//len_list: 139
//==============================


//==============================
    submit.push(5534);
    ref.push(5534);

//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(2918);
    ref.push(2918);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(6219);
    ref.push(6219);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(9314);
    ref.push(9314);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(1880);
    ref.push(1880);

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
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(2169);
    ref.push(2169);

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
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(6028);
    ref.push(6028);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(4759);
    ref.push(4759);

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
    submit.push(6279);
    ref.push(6279);

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
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(4443);
    ref.push(4443);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(947);
    ref.push(947);

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
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(4558);
    ref.push(4558);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(6254);
    ref.push(6254);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(7076);
    ref.push(7076);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(2967);
    ref.push(2967);

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(4797);
    ref.push(4797);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
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
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(4272);
    ref.push(4272);

//len_list: 141
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 140
//==============================


//==============================
    submit.push(3089);
    ref.push(3089);

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
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 140
//==============================


//==============================
    submit.push(3219);
    ref.push(3219);

//len_list: 141
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 141
//==============================


//==============================
    submit.push(5496);
    ref.push(5496);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(6808);
    ref.push(6808);

//len_list: 142
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 141
//==============================


//==============================
    submit.push(5916);
    ref.push(5916);

//len_list: 142
//==============================


//==============================
    submit.push(4025);
    ref.push(4025);

//len_list: 143
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 142
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 142
//==============================


//==============================
    submit.push(4663);
    ref.push(4663);

//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 143
//==============================


//==============================
    submit.push(6131);
    ref.push(6131);

//len_list: 144
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 144
//==============================


//==============================
    submit.push(9494);
    ref.push(9494);

//len_list: 145
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 144
//==============================


//==============================
    submit.push(15);
    ref.push(15);

//len_list: 145
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 145
//==============================


//==============================
    submit.push(1824);
    ref.push(1824);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(3910);
    ref.push(3910);

//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 147
//==============================


//==============================
    submit.push(7225);
    ref.push(7225);

//len_list: 148
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 147
//==============================


//==============================
    submit.push(7707);
    ref.push(7707);

//len_list: 148
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 414
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
//num_require: 415
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
    submit.push(9780);
    ref.push(9780);

//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 146
//==============================


//==============================
    submit.push(8852);
    ref.push(8852);

//len_list: 147
//==============================


}
