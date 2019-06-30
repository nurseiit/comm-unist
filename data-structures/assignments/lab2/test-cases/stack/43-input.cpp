
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (82,369)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(9258);
    ref.push(9258);

//len_list: 1
//==============================


//==============================
    submit.push(1486);
    ref.push(1486);

//len_list: 2
//==============================


//==============================
    submit.push(4424);
    ref.push(4424);

//len_list: 3
//==============================


//==============================
    submit.push(3078);
    ref.push(3078);

//len_list: 4
//==============================


//==============================
    submit.push(2669);
    ref.push(2669);

//len_list: 5
//==============================


//==============================
    submit.push(7395);
    ref.push(7395);

//len_list: 6
//==============================


//==============================
    submit.push(2757);
    ref.push(2757);

//len_list: 7
//==============================


//==============================
    submit.push(4880);
    ref.push(4880);

//len_list: 8
//==============================


//==============================
    submit.push(3193);
    ref.push(3193);

//len_list: 9
//==============================


//==============================
    submit.push(9953);
    ref.push(9953);

//len_list: 10
//==============================


//==============================
    submit.push(9129);
    ref.push(9129);

//len_list: 11
//==============================


//==============================
    submit.push(1940);
    ref.push(1940);

//len_list: 12
//==============================


//==============================
    submit.push(5862);
    ref.push(5862);

//len_list: 13
//==============================


//==============================
    submit.push(6470);
    ref.push(6470);

//len_list: 14
//==============================


//==============================
    submit.push(1598);
    ref.push(1598);

//len_list: 15
//==============================


//==============================
    submit.push(6228);
    ref.push(6228);

//len_list: 16
//==============================


//==============================
    submit.push(5574);
    ref.push(5574);

//len_list: 17
//==============================


//==============================
    submit.push(1334);
    ref.push(1334);

//len_list: 18
//==============================


//==============================
    submit.push(9086);
    ref.push(9086);

//len_list: 19
//==============================


//==============================
    submit.push(5018);
    ref.push(5018);

//len_list: 20
//==============================


//==============================
    submit.push(2087);
    ref.push(2087);

//len_list: 21
//==============================


//==============================
    submit.push(5916);
    ref.push(5916);

//len_list: 22
//==============================


//==============================
    submit.push(3071);
    ref.push(3071);

//len_list: 23
//==============================


//==============================
    submit.push(1491);
    ref.push(1491);

//len_list: 24
//==============================


//==============================
    submit.push(3357);
    ref.push(3357);

//len_list: 25
//==============================


//==============================
    submit.push(406);
    ref.push(406);

//len_list: 26
//==============================


//==============================
    submit.push(9977);
    ref.push(9977);

//len_list: 27
//==============================


//==============================
    submit.push(3619);
    ref.push(3619);

//len_list: 28
//==============================


//==============================
    submit.push(4037);
    ref.push(4037);

//len_list: 29
//==============================


//==============================
    submit.push(2939);
    ref.push(2939);

//len_list: 30
//==============================


//==============================
    submit.push(5496);
    ref.push(5496);

//len_list: 31
//==============================


//==============================
    submit.push(9653);
    ref.push(9653);

//len_list: 32
//==============================


//==============================
    submit.push(2841);
    ref.push(2841);

//len_list: 33
//==============================


//==============================
    submit.push(8968);
    ref.push(8968);

//len_list: 34
//==============================


//==============================
    submit.push(6341);
    ref.push(6341);

//len_list: 35
//==============================


//==============================
    submit.push(8930);
    ref.push(8930);

//len_list: 36
//==============================


//==============================
    submit.push(8113);
    ref.push(8113);

//len_list: 37
//==============================


//==============================
    submit.push(9230);
    ref.push(9230);

//len_list: 38
//==============================


//==============================
    submit.push(1227);
    ref.push(1227);

//len_list: 39
//==============================


//==============================
    submit.push(8321);
    ref.push(8321);

//len_list: 40
//==============================


//==============================
    submit.push(9194);
    ref.push(9194);

//len_list: 41
//==============================


//==============================
    submit.push(4370);
    ref.push(4370);

//len_list: 42
//==============================


//==============================
    submit.push(6190);
    ref.push(6190);

//len_list: 43
//==============================


//==============================
    submit.push(4921);
    ref.push(4921);

//len_list: 44
//==============================


//==============================
    submit.push(6331);
    ref.push(6331);

//len_list: 45
//==============================


//==============================
    submit.push(5492);
    ref.push(5492);

//len_list: 46
//==============================


//==============================
    submit.push(4598);
    ref.push(4598);

//len_list: 47
//==============================


//==============================
    submit.push(3145);
    ref.push(3145);

//len_list: 48
//==============================


//==============================
    submit.push(4636);
    ref.push(4636);

//len_list: 49
//==============================


//==============================
    submit.push(6425);
    ref.push(6425);

//len_list: 50
//==============================


//==============================
    submit.push(3526);
    ref.push(3526);

//len_list: 51
//==============================


//==============================
    submit.push(6916);
    ref.push(6916);

//len_list: 52
//==============================


//==============================
    submit.push(7890);
    ref.push(7890);

//len_list: 53
//==============================


//==============================
    submit.push(3995);
    ref.push(3995);

//len_list: 54
//==============================


//==============================
    submit.push(5038);
    ref.push(5038);

//len_list: 55
//==============================


//==============================
    submit.push(2128);
    ref.push(2128);

//len_list: 56
//==============================


//==============================
    submit.push(5340);
    ref.push(5340);

//len_list: 57
//==============================


//==============================
    submit.push(6593);
    ref.push(6593);

//len_list: 58
//==============================


//==============================
    submit.push(8147);
    ref.push(8147);

//len_list: 59
//==============================


//==============================
    submit.push(332);
    ref.push(332);

//len_list: 60
//==============================


//==============================
    submit.push(2386);
    ref.push(2386);

//len_list: 61
//==============================


//==============================
    submit.push(2397);
    ref.push(2397);

//len_list: 62
//==============================


//==============================
    submit.push(5434);
    ref.push(5434);

//len_list: 63
//==============================


//==============================
    submit.push(6746);
    ref.push(6746);

//len_list: 64
//==============================


//==============================
    submit.push(2616);
    ref.push(2616);

//len_list: 65
//==============================


//==============================
    submit.push(2650);
    ref.push(2650);

//len_list: 66
//==============================


//==============================
    submit.push(5761);
    ref.push(5761);

//len_list: 67
//==============================


//==============================
    submit.push(1874);
    ref.push(1874);

//len_list: 68
//==============================


//==============================
    submit.push(1005);
    ref.push(1005);

//len_list: 69
//==============================


//==============================
    submit.push(5543);
    ref.push(5543);

//len_list: 70
//==============================


//==============================
    submit.push(2727);
    ref.push(2727);

//len_list: 71
//==============================


//==============================
    submit.push(4656);
    ref.push(4656);

//len_list: 72
//==============================


//==============================
    submit.push(9251);
    ref.push(9251);

//len_list: 73
//==============================


//==============================
    submit.push(2488);
    ref.push(2488);

//len_list: 74
//==============================


//==============================
    submit.push(8268);
    ref.push(8268);

//len_list: 75
//==============================


//==============================
    submit.push(942);
    ref.push(942);

//len_list: 76
//==============================


//==============================
    submit.push(8564);
    ref.push(8564);

//len_list: 77
//==============================


//==============================
    submit.push(6378);
    ref.push(6378);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(6035);
    ref.push(6035);

//len_list: 79
//==============================


//==============================
    submit.push(2992);
    ref.push(2992);

//len_list: 80
//==============================


//==============================
    submit.push(2186);
    ref.push(2186);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(8130);
    ref.push(8130);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
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
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(2415);
    ref.push(2415);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
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
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(3826);
    ref.push(3826);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(5284);
    ref.push(5284);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
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
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(3921);
    ref.push(3921);

//len_list: 77
//==============================


//==============================
    submit.push(5072);
    ref.push(5072);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5384);
    ref.push(5384);

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
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(8092);
    ref.push(8092);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(5208);
    ref.push(5208);

//len_list: 77
//==============================


//==============================
    submit.push(2162);
    ref.push(2162);

//len_list: 78
//==============================


//==============================
    submit.push(1342);
    ref.push(1342);

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
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(8823);
    ref.push(8823);

//len_list: 79
//==============================


//==============================
    submit.push(3845);
    ref.push(3845);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(9140);
    ref.push(9140);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
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
//num_require: 24
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
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(8011);
    ref.push(8011);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(5791);
    ref.push(5791);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1690);
    ref.push(1690);

//len_list: 78
//==============================


//==============================
    submit.push(6875);
    ref.push(6875);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(1877);
    ref.push(1877);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(4969);
    ref.push(4969);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(2428);
    ref.push(2428);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(5703);
    ref.push(5703);

//len_list: 78
//==============================


//==============================
    submit.push(7836);
    ref.push(7836);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5169);
    ref.push(5169);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
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
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(6766);
    ref.push(6766);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(9197);
    ref.push(9197);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1068);
    ref.push(1068);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(5725);
    ref.push(5725);

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
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8879);
    ref.push(8879);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(9968);
    ref.push(9968);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9562);
    ref.push(9562);

//len_list: 78
//==============================


//==============================
    submit.push(7986);
    ref.push(7986);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
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
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(2237);
    ref.push(2237);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(2884);
    ref.push(2884);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(3212);
    ref.push(3212);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(4598);
    ref.push(4598);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(6135);
    ref.push(6135);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
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
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(2411);
    ref.push(2411);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(6845);
    ref.push(6845);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(5631);
    ref.push(5631);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(5957);
    ref.push(5957);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(6436);
    ref.push(6436);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(9108);
    ref.push(9108);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(7505);
    ref.push(7505);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(2829);
    ref.push(2829);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(9796);
    ref.push(9796);

//len_list: 80
//==============================


//==============================
    submit.push(5350);
    ref.push(5350);

//len_list: 81
//==============================


//==============================
    submit.push(6205);
    ref.push(6205);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 114
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(7338);
    ref.push(7338);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(9638);
    ref.push(9638);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(857);
    ref.push(857);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(3631);
    ref.push(3631);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(8714);
    ref.push(8714);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(8240);
    ref.push(8240);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1101);
    ref.push(1101);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(391);
    ref.push(391);

//len_list: 79
//==============================


//==============================
    submit.push(8592);
    ref.push(8592);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(6933);
    ref.push(6933);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(8457);
    ref.push(8457);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(3506);
    ref.push(3506);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(5607);
    ref.push(5607);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(1815);
    ref.push(1815);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(5578);
    ref.push(5578);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(3561);
    ref.push(3561);

//len_list: 83
//==============================


//==============================
    submit.push(9667);
    ref.push(9667);

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
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(5192);
    ref.push(5192);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(4707);
    ref.push(4707);

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
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(5835);
    ref.push(5835);

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
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(8802);
    ref.push(8802);

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


}
