
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (84,343)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(9702);
    ref.push(9702);

//len_list: 1
//==============================


//==============================
    submit.push(4802);
    ref.push(4802);

//len_list: 2
//==============================


//==============================
    submit.push(8894);
    ref.push(8894);

//len_list: 3
//==============================


//==============================
    submit.push(136);
    ref.push(136);

//len_list: 4
//==============================


//==============================
    submit.push(4809);
    ref.push(4809);

//len_list: 5
//==============================


//==============================
    submit.push(2869);
    ref.push(2869);

//len_list: 6
//==============================


//==============================
    submit.push(3038);
    ref.push(3038);

//len_list: 7
//==============================


//==============================
    submit.push(5997);
    ref.push(5997);

//len_list: 8
//==============================


//==============================
    submit.push(1927);
    ref.push(1927);

//len_list: 9
//==============================


//==============================
    submit.push(2221);
    ref.push(2221);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(3363);
    ref.push(3363);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(5484);
    ref.push(5484);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(6591);
    ref.push(6591);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(8825);
    ref.push(8825);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(2888);
    ref.push(2888);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(82);
    ref.push(82);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(4656);
    ref.push(4656);

//len_list: 11
//==============================


//==============================
    submit.push(2539);
    ref.push(2539);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(9907);
    ref.push(9907);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(5330);
    ref.push(5330);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(6782);
    ref.push(6782);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(4336);
    ref.push(4336);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(1626);
    ref.push(1626);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(1653);
    ref.push(1653);

//len_list: 10
//==============================


//==============================
    submit.push(6892);
    ref.push(6892);

//len_list: 11
//==============================


//==============================
    submit.push(9431);
    ref.push(9431);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(4488);
    ref.push(4488);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(3785);
    ref.push(3785);

//len_list: 10
//==============================


//==============================
    submit.push(7860);
    ref.push(7860);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(6426);
    ref.push(6426);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(4970);
    ref.push(4970);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(6338);
    ref.push(6338);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1287);
    ref.push(1287);

//len_list: 11
//==============================


//==============================
    submit.push(3084);
    ref.push(3084);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(6891);
    ref.push(6891);

//len_list: 13
//==============================


//==============================
    submit.push(4028);
    ref.push(4028);

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(2209);
    ref.push(2209);

//len_list: 14
//==============================


//==============================
    submit.push(983);
    ref.push(983);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(8635);
    ref.push(8635);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(2070);
    ref.push(2070);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(8928);
    ref.push(8928);

//len_list: 10
//==============================


//==============================
    submit.push(4741);
    ref.push(4741);

//len_list: 11
//==============================


//==============================
    submit.push(5574);
    ref.push(5574);

//len_list: 12
//==============================


//==============================
    submit.push(6187);
    ref.push(6187);

//len_list: 13
//==============================


//==============================
    submit.push(3413);
    ref.push(3413);

//len_list: 14
//==============================


//==============================
    submit.push(8000);
    ref.push(8000);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(6442);
    ref.push(6442);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(916);
    ref.push(916);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(2824);
    ref.push(2824);

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(7750);
    ref.push(7750);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(6677);
    ref.push(6677);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(1161);
    ref.push(1161);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(325);
    ref.push(325);

//len_list: 17
//==============================


//==============================
    submit.push(4889);
    ref.push(4889);

//len_list: 18
//==============================


//==============================
    submit.push(6719);
    ref.push(6719);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(3125);
    ref.push(3125);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(1759);
    ref.push(1759);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(1701);
    ref.push(1701);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(5737);
    ref.push(5737);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(6919);
    ref.push(6919);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(2443);
    ref.push(2443);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(4078);
    ref.push(4078);

//len_list: 24
//==============================


//==============================
    submit.push(2453);
    ref.push(2453);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(5920);
    ref.push(5920);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(6020);
    ref.push(6020);

//len_list: 25
//==============================


//==============================
    submit.push(6416);
    ref.push(6416);

//len_list: 26
//==============================


//==============================
    submit.push(1991);
    ref.push(1991);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(9148);
    ref.push(9148);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(3530);
    ref.push(3530);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(9572);
    ref.push(9572);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(4030);
    ref.push(4030);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(4286);
    ref.push(4286);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(7240);
    ref.push(7240);

//len_list: 23
//==============================


//==============================
    submit.push(6386);
    ref.push(6386);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(8827);
    ref.push(8827);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(9990);
    ref.push(9990);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(6575);
    ref.push(6575);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(6503);
    ref.push(6503);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(4991);
    ref.push(4991);

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(50);
    ref.push(50);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(9717);
    ref.push(9717);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(2427);
    ref.push(2427);

//len_list: 27
//==============================


//==============================
    submit.push(7527);
    ref.push(7527);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(9729);
    ref.push(9729);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(9637);
    ref.push(9637);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(2478);
    ref.push(2478);

//len_list: 31
//==============================


//==============================
    submit.push(2812);
    ref.push(2812);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(8803);
    ref.push(8803);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(2331);
    ref.push(2331);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(1851);
    ref.push(1851);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(4290);
    ref.push(4290);

//len_list: 33
//==============================


//==============================
    submit.push(2767);
    ref.push(2767);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(6510);
    ref.push(6510);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(4417);
    ref.push(4417);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(3349);
    ref.push(3349);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(1260);
    ref.push(1260);

//len_list: 32
//==============================


//==============================
    submit.push(5147);
    ref.push(5147);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(1052);
    ref.push(1052);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(1477);
    ref.push(1477);

//len_list: 33
//==============================


//==============================
    submit.push(5231);
    ref.push(5231);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(9443);
    ref.push(9443);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(1633);
    ref.push(1633);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(5822);
    ref.push(5822);

//len_list: 37
//==============================


//==============================
    submit.push(178);
    ref.push(178);

//len_list: 38
//==============================


//==============================
    submit.push(5574);
    ref.push(5574);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(9833);
    ref.push(9833);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(7282);
    ref.push(7282);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(7044);
    ref.push(7044);

//len_list: 41
//==============================


//==============================
    submit.push(2263);
    ref.push(2263);

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(2574);
    ref.push(2574);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(2491);
    ref.push(2491);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(84);
    ref.push(84);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(9700);
    ref.push(9700);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(7437);
    ref.push(7437);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


}
