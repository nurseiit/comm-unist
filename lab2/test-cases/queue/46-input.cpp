
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (112,721)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(112)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(2583);
    ref.push(2583);

//len_list: 1
//==============================


//==============================
    submit.push(4186);
    ref.push(4186);

//len_list: 2
//==============================


//==============================
    submit.push(2345);
    ref.push(2345);

//len_list: 3
//==============================


//==============================
    submit.push(6835);
    ref.push(6835);

//len_list: 4
//==============================


//==============================
    submit.push(8912);
    ref.push(8912);

//len_list: 5
//==============================


//==============================
    submit.push(7710);
    ref.push(7710);

//len_list: 6
//==============================


//==============================
    submit.push(3161);
    ref.push(3161);

//len_list: 7
//==============================


//==============================
    submit.push(5898);
    ref.push(5898);

//len_list: 8
//==============================


//==============================
    submit.push(4839);
    ref.push(4839);

//len_list: 9
//==============================


//==============================
    submit.push(3057);
    ref.push(3057);

//len_list: 10
//==============================


//==============================
    submit.push(2449);
    ref.push(2449);

//len_list: 11
//==============================


//==============================
    submit.push(71);
    ref.push(71);

//len_list: 12
//==============================


//==============================
    submit.push(3390);
    ref.push(3390);

//len_list: 13
//==============================


//==============================
    submit.push(2946);
    ref.push(2946);

//len_list: 14
//==============================


//==============================
    submit.push(4742);
    ref.push(4742);

//len_list: 15
//==============================


//==============================
    submit.push(5035);
    ref.push(5035);

//len_list: 16
//==============================


//==============================
    submit.push(2604);
    ref.push(2604);

//len_list: 17
//==============================


//==============================
    submit.push(8416);
    ref.push(8416);

//len_list: 18
//==============================


//==============================
    submit.push(8464);
    ref.push(8464);

//len_list: 19
//==============================


//==============================
    submit.push(3894);
    ref.push(3894);

//len_list: 20
//==============================


//==============================
    submit.push(6733);
    ref.push(6733);

//len_list: 21
//==============================


//==============================
    submit.push(7131);
    ref.push(7131);

//len_list: 22
//==============================


//==============================
    submit.push(9218);
    ref.push(9218);

//len_list: 23
//==============================


//==============================
    submit.push(3754);
    ref.push(3754);

//len_list: 24
//==============================


//==============================
    submit.push(2778);
    ref.push(2778);

//len_list: 25
//==============================


//==============================
    submit.push(3739);
    ref.push(3739);

//len_list: 26
//==============================


//==============================
    submit.push(3989);
    ref.push(3989);

//len_list: 27
//==============================


//==============================
    submit.push(1538);
    ref.push(1538);

//len_list: 28
//==============================


//==============================
    submit.push(2504);
    ref.push(2504);

//len_list: 29
//==============================


//==============================
    submit.push(946);
    ref.push(946);

//len_list: 30
//==============================


//==============================
    submit.push(5291);
    ref.push(5291);

//len_list: 31
//==============================


//==============================
    submit.push(152);
    ref.push(152);

//len_list: 32
//==============================


//==============================
    submit.push(7407);
    ref.push(7407);

//len_list: 33
//==============================


//==============================
    submit.push(6312);
    ref.push(6312);

//len_list: 34
//==============================


//==============================
    submit.push(7590);
    ref.push(7590);

//len_list: 35
//==============================


//==============================
    submit.push(5363);
    ref.push(5363);

//len_list: 36
//==============================


//==============================
    submit.push(2175);
    ref.push(2175);

//len_list: 37
//==============================


//==============================
    submit.push(4765);
    ref.push(4765);

//len_list: 38
//==============================


//==============================
    submit.push(9626);
    ref.push(9626);

//len_list: 39
//==============================


//==============================
    submit.push(3649);
    ref.push(3649);

//len_list: 40
//==============================


//==============================
    submit.push(8370);
    ref.push(8370);

//len_list: 41
//==============================


//==============================
    submit.push(5862);
    ref.push(5862);

//len_list: 42
//==============================


//==============================
    submit.push(3808);
    ref.push(3808);

//len_list: 43
//==============================


//==============================
    submit.push(9855);
    ref.push(9855);

//len_list: 44
//==============================


//==============================
    submit.push(9065);
    ref.push(9065);

//len_list: 45
//==============================


//==============================
    submit.push(937);
    ref.push(937);

//len_list: 46
//==============================


//==============================
    submit.push(5247);
    ref.push(5247);

//len_list: 47
//==============================


//==============================
    submit.push(9282);
    ref.push(9282);

//len_list: 48
//==============================


//==============================
    submit.push(676);
    ref.push(676);

//len_list: 49
//==============================


//==============================
    submit.push(3476);
    ref.push(3476);

//len_list: 50
//==============================


//==============================
    submit.push(8080);
    ref.push(8080);

//len_list: 51
//==============================


//==============================
    submit.push(6776);
    ref.push(6776);

//len_list: 52
//==============================


//==============================
    submit.push(6953);
    ref.push(6953);

//len_list: 53
//==============================


//==============================
    submit.push(1034);
    ref.push(1034);

//len_list: 54
//==============================


//==============================
    submit.push(4140);
    ref.push(4140);

//len_list: 55
//==============================


//==============================
    submit.push(7817);
    ref.push(7817);

//len_list: 56
//==============================


//==============================
    submit.push(5708);
    ref.push(5708);

//len_list: 57
//==============================


//==============================
    submit.push(137);
    ref.push(137);

//len_list: 58
//==============================


//==============================
    submit.push(1082);
    ref.push(1082);

//len_list: 59
//==============================


//==============================
    submit.push(7356);
    ref.push(7356);

//len_list: 60
//==============================


//==============================
    submit.push(2563);
    ref.push(2563);

//len_list: 61
//==============================


//==============================
    submit.push(7231);
    ref.push(7231);

//len_list: 62
//==============================


//==============================
    submit.push(381);
    ref.push(381);

//len_list: 63
//==============================


//==============================
    submit.push(8944);
    ref.push(8944);

//len_list: 64
//==============================


//==============================
    submit.push(1599);
    ref.push(1599);

//len_list: 65
//==============================


//==============================
    submit.push(5581);
    ref.push(5581);

//len_list: 66
//==============================


//==============================
    submit.push(2378);
    ref.push(2378);

//len_list: 67
//==============================


//==============================
    submit.push(140);
    ref.push(140);

//len_list: 68
//==============================


//==============================
    submit.push(7219);
    ref.push(7219);

//len_list: 69
//==============================


//==============================
    submit.push(9992);
    ref.push(9992);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(3702);
    ref.push(3702);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(5858);
    ref.push(5858);

//len_list: 72
//==============================


//==============================
    submit.push(8456);
    ref.push(8456);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(9668);
    ref.push(9668);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(5507);
    ref.push(5507);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(5310);
    ref.push(5310);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(2942);
    ref.push(2942);

//len_list: 71
//==============================


//==============================
    submit.push(1374);
    ref.push(1374);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(1077);
    ref.push(1077);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(1168);
    ref.push(1168);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(4502);
    ref.push(4502);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(2003);
    ref.push(2003);

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(7169);
    ref.push(7169);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(5784);
    ref.push(5784);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(2314);
    ref.push(2314);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(282);
    ref.push(282);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(3002);
    ref.push(3002);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(9698);
    ref.push(9698);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(2620);
    ref.push(2620);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(375);
    ref.push(375);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.push(597);
    ref.push(597);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(7152);
    ref.push(7152);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(1664);
    ref.push(1664);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.push(2393);
    ref.push(2393);

//len_list: 74
//==============================


//==============================
    submit.push(6454);
    ref.push(6454);

//len_list: 75
//==============================


//==============================
    submit.push(1521);
    ref.push(1521);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 61
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(9742);
    ref.push(9742);

//len_list: 74
//==============================


//==============================
    submit.push(1837);
    ref.push(1837);

//len_list: 75
//==============================


//==============================
    submit.push(4999);
    ref.push(4999);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 77
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(9378);
    ref.push(9378);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(6376);
    ref.push(6376);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(7527);
    ref.push(7527);

//len_list: 70
//==============================


//==============================
    submit.push(7875);
    ref.push(7875);

//len_list: 71
//==============================


//==============================
    submit.push(4916);
    ref.push(4916);

//len_list: 72
//==============================


//==============================
    submit.push(6787);
    ref.push(6787);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(5059);
    ref.push(5059);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(4771);
    ref.push(4771);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(5811);
    ref.push(5811);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(8929);
    ref.push(8929);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(2419);
    ref.push(2419);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.push(7926);
    ref.push(7926);

//len_list: 71
//==============================


//==============================
    submit.push(2638);
    ref.push(2638);

//len_list: 72
//==============================


//==============================
    submit.push(3405);
    ref.push(3405);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(8422);
    ref.push(8422);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(9795);
    ref.push(9795);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(9308);
    ref.push(9308);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(8088);
    ref.push(8088);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(9509);
    ref.push(9509);

//len_list: 73
//==============================


//==============================
    submit.push(7531);
    ref.push(7531);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(3018);
    ref.push(3018);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(6567);
    ref.push(6567);

//len_list: 70
//==============================


//==============================
    submit.push(1734);
    ref.push(1734);

//len_list: 71
//==============================


//==============================
    submit.push(752);
    ref.push(752);

//len_list: 72
//==============================


//==============================
    submit.push(858);
    ref.push(858);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(4688);
    ref.push(4688);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(9880);
    ref.push(9880);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(8723);
    ref.push(8723);

//len_list: 72
//==============================


//==============================
    submit.push(7370);
    ref.push(7370);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(7196);
    ref.push(7196);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(7931);
    ref.push(7931);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(7613);
    ref.push(7613);

//len_list: 73
//==============================


//==============================
    submit.push(1406);
    ref.push(1406);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.push(2732);
    ref.push(2732);

//len_list: 74
//==============================


//==============================
    submit.push(2986);
    ref.push(2986);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(4128);
    ref.push(4128);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 187
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
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(449);
    ref.push(449);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(3514);
    ref.push(3514);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(5405);
    ref.push(5405);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(8344);
    ref.push(8344);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(2758);
    ref.push(2758);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(4365);
    ref.push(4365);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(5977);
    ref.push(5977);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(7299);
    ref.push(7299);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(9932);
    ref.push(9932);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(3648);
    ref.push(3648);

//len_list: 71
//==============================


//==============================
    submit.push(5094);
    ref.push(5094);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(4872);
    ref.push(4872);

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(8869);
    ref.push(8869);

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(154);
    ref.push(154);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(2867);
    ref.push(2867);

//len_list: 74
//==============================


//==============================
    submit.push(1242);
    ref.push(1242);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(6697);
    ref.push(6697);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(1672);
    ref.push(1672);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(1631);
    ref.push(1631);

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.push(8013);
    ref.push(8013);

//len_list: 72
//==============================


//==============================
    submit.push(9938);
    ref.push(9938);

//len_list: 73
//==============================


//==============================
    submit.push(205);
    ref.push(205);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(3185);
    ref.push(3185);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(468);
    ref.push(468);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.push(6340);
    ref.push(6340);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(1433);
    ref.push(1433);

//len_list: 75
//==============================


//==============================
    submit.push(7518);
    ref.push(7518);

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
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(2564);
    ref.push(2564);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(7107);
    ref.push(7107);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(4380);
    ref.push(4380);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(273);
    ref.push(273);

//len_list: 79
//==============================


//==============================
    submit.push(41);
    ref.push(41);

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
//num_require: 275
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
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(6863);
    ref.push(6863);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
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
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5662);
    ref.push(5662);

//len_list: 79
//==============================


//==============================
    submit.push(9382);
    ref.push(9382);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 285
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(3351);
    ref.push(3351);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 290
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
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(7995);
    ref.push(7995);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(5438);
    ref.push(5438);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
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
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(2279);
    ref.push(2279);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(4525);
    ref.push(4525);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
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
    submit.push(2409);
    ref.push(2409);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(4731);
    ref.push(4731);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(6178);
    ref.push(6178);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8932);
    ref.push(8932);

//len_list: 78
//==============================


//==============================
    submit.push(1080);
    ref.push(1080);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(7889);
    ref.push(7889);

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
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9720);
    ref.push(9720);

//len_list: 78
//==============================


//==============================
    submit.push(1618);
    ref.push(1618);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(1633);
    ref.push(1633);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(7850);
    ref.push(7850);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
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
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 321
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
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(2190);
    ref.push(2190);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(2672);
    ref.push(2672);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(2742);
    ref.push(2742);

//len_list: 82
//==============================


//==============================
    submit.push(9219);
    ref.push(9219);

//len_list: 83
//==============================


//==============================
    submit.push(6187);
    ref.push(6187);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 338
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
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(8460);
    ref.push(8460);

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
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 347
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
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
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
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(9668);
    ref.push(9668);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 353
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
//num_require: 354
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
//num_require: 355
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
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(681);
    ref.push(681);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5694);
    ref.push(5694);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(2141);
    ref.push(2141);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(3362);
    ref.push(3362);

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
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(6274);
    ref.push(6274);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 373
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
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(6299);
    ref.push(6299);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(5837);
    ref.push(5837);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(392);
    ref.push(392);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
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
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
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
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(6388);
    ref.push(6388);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
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
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(341);
    ref.push(341);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8120);
    ref.push(8120);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


}
