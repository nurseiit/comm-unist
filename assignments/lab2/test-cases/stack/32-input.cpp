
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (39,472)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5238);
    ref.push(5238);

//len_list: 1
//==============================


//==============================
    submit.push(2146);
    ref.push(2146);

//len_list: 2
//==============================


//==============================
    submit.push(8304);
    ref.push(8304);

//len_list: 3
//==============================


//==============================
    submit.push(3720);
    ref.push(3720);

//len_list: 4
//==============================


//==============================
    submit.push(2718);
    ref.push(2718);

//len_list: 5
//==============================


//==============================
    submit.push(3818);
    ref.push(3818);

//len_list: 6
//==============================


//==============================
    submit.push(6042);
    ref.push(6042);

//len_list: 7
//==============================


//==============================
    submit.push(5713);
    ref.push(5713);

//len_list: 8
//==============================


//==============================
    submit.push(7904);
    ref.push(7904);

//len_list: 9
//==============================


//==============================
    submit.push(3078);
    ref.push(3078);

//len_list: 10
//==============================


//==============================
    submit.push(3865);
    ref.push(3865);

//len_list: 11
//==============================


//==============================
    submit.push(6793);
    ref.push(6793);

//len_list: 12
//==============================


//==============================
    submit.push(8867);
    ref.push(8867);

//len_list: 13
//==============================


//==============================
    submit.push(4798);
    ref.push(4798);

//len_list: 14
//==============================


//==============================
    submit.push(9789);
    ref.push(9789);

//len_list: 15
//==============================


//==============================
    submit.push(9036);
    ref.push(9036);

//len_list: 16
//==============================


//==============================
    submit.push(9887);
    ref.push(9887);

//len_list: 17
//==============================


//==============================
    submit.push(6287);
    ref.push(6287);

//len_list: 18
//==============================


//==============================
    submit.push(1899);
    ref.push(1899);

//len_list: 19
//==============================


//==============================
    submit.push(3133);
    ref.push(3133);

//len_list: 20
//==============================


//==============================
    submit.push(1945);
    ref.push(1945);

//len_list: 21
//==============================


//==============================
    submit.push(1144);
    ref.push(1144);

//len_list: 22
//==============================


//==============================
    submit.push(3527);
    ref.push(3527);

//len_list: 23
//==============================


//==============================
    submit.push(5468);
    ref.push(5468);

//len_list: 24
//==============================


//==============================
    submit.push(3753);
    ref.push(3753);

//len_list: 25
//==============================


//==============================
    submit.push(7851);
    ref.push(7851);

//len_list: 26
//==============================


//==============================
    submit.push(8069);
    ref.push(8069);

//len_list: 27
//==============================


//==============================
    submit.push(9616);
    ref.push(9616);

//len_list: 28
//==============================


//==============================
    submit.push(5479);
    ref.push(5479);

//len_list: 29
//==============================


//==============================
    submit.push(277);
    ref.push(277);

//len_list: 30
//==============================


//==============================
    submit.push(2643);
    ref.push(2643);

//len_list: 31
//==============================


//==============================
    submit.push(3574);
    ref.push(3574);

//len_list: 32
//==============================


//==============================
    submit.push(1567);
    ref.push(1567);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(9843);
    ref.push(9843);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(7465);
    ref.push(7465);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(6234);
    ref.push(6234);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(5979);
    ref.push(5979);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(1621);
    ref.push(1621);

//len_list: 33
//==============================


//==============================
    submit.push(9783);
    ref.push(9783);

//len_list: 34
//==============================


//==============================
    submit.push(3160);
    ref.push(3160);

//len_list: 35
//==============================


//==============================
    submit.push(932);
    ref.push(932);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(8448);
    ref.push(8448);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(5038);
    ref.push(5038);

//len_list: 33
//==============================


//==============================
    submit.push(4162);
    ref.push(4162);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
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
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(974);
    ref.push(974);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(7270);
    ref.push(7270);

//len_list: 33
//==============================


//==============================
    submit.push(1115);
    ref.push(1115);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(9265);
    ref.push(9265);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(2583);
    ref.push(2583);

//len_list: 33
//==============================


//==============================
    submit.push(2283);
    ref.push(2283);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(5796);
    ref.push(5796);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(9121);
    ref.push(9121);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(3783);
    ref.push(3783);

//len_list: 34
//==============================


//==============================
    submit.push(8654);
    ref.push(8654);

//len_list: 35
//==============================


//==============================
    submit.push(6676);
    ref.push(6676);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(4668);
    ref.push(4668);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
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
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(3134);
    ref.push(3134);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(6007);
    ref.push(6007);

//len_list: 34
//==============================


//==============================
    submit.push(8358);
    ref.push(8358);

//len_list: 35
//==============================


//==============================
    submit.push(6330);
    ref.push(6330);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(848);
    ref.push(848);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(5230);
    ref.push(5230);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(881);
    ref.push(881);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(1208);
    ref.push(1208);

//len_list: 38
//==============================


//==============================
    submit.push(8314);
    ref.push(8314);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(604);
    ref.push(604);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3476);
    ref.push(3476);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(8092);
    ref.push(8092);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(2821);
    ref.push(2821);

//len_list: 42
//==============================


//==============================
    submit.push(583);
    ref.push(583);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
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
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(4768);
    ref.push(4768);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(6296);
    ref.push(6296);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(4416);
    ref.push(4416);

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
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3821);
    ref.push(3821);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(1363);
    ref.push(1363);

//len_list: 39
//==============================


//==============================
    submit.push(5239);
    ref.push(5239);

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
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(9526);
    ref.push(9526);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3896);
    ref.push(3896);

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
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(992);
    ref.push(992);

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
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(9434);
    ref.push(9434);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(3712);
    ref.push(3712);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2043);
    ref.push(2043);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(4956);
    ref.push(4956);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(7840);
    ref.push(7840);

//len_list: 41
//==============================


//==============================
    submit.push(196);
    ref.push(196);

//len_list: 42
//==============================


//==============================
    submit.push(7057);
    ref.push(7057);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1372);
    ref.push(1372);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(9130);
    ref.push(9130);

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(8675);
    ref.push(8675);

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(2206);
    ref.push(2206);

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
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(2831);
    ref.push(2831);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(7993);
    ref.push(7993);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(6573);
    ref.push(6573);

//len_list: 44
//==============================


//==============================
    submit.push(3141);
    ref.push(3141);

//len_list: 45
//==============================


//==============================
    submit.push(6757);
    ref.push(6757);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(1921);
    ref.push(1921);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(1469);
    ref.push(1469);

//len_list: 46
//==============================


//==============================
    submit.push(9815);
    ref.push(9815);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.push(770);
    ref.push(770);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(8458);
    ref.push(8458);

//len_list: 46
//==============================


//==============================
    submit.push(4266);
    ref.push(4266);

//len_list: 47
//==============================


//==============================
    submit.push(1036);
    ref.push(1036);

//len_list: 48
//==============================


//==============================
    submit.push(8238);
    ref.push(8238);

//len_list: 49
//==============================


//==============================
    submit.push(2127);
    ref.push(2127);

//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.push(5311);
    ref.push(5311);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.push(405);
    ref.push(405);

//len_list: 49
//==============================


//==============================
    submit.push(8942);
    ref.push(8942);

//len_list: 50
//==============================


//==============================
    submit.push(3730);
    ref.push(3730);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.push(990);
    ref.push(990);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(6780);
    ref.push(6780);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(3721);
    ref.push(3721);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.push(3526);
    ref.push(3526);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(7006);
    ref.push(7006);

//len_list: 48
//==============================


//==============================
    submit.push(8379);
    ref.push(8379);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(373);
    ref.push(373);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(2839);
    ref.push(2839);

//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(9189);
    ref.push(9189);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(6423);
    ref.push(6423);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.push(4084);
    ref.push(4084);

//len_list: 50
//==============================


//==============================
    submit.push(9221);
    ref.push(9221);

//len_list: 51
//==============================


//==============================
    submit.push(3897);
    ref.push(3897);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.push(5698);
    ref.push(5698);

//len_list: 50
//==============================


//==============================
    submit.push(3450);
    ref.push(3450);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(2783);
    ref.push(2783);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(4668);
    ref.push(4668);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(7999);
    ref.push(7999);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(2940);
    ref.push(2940);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(4844);
    ref.push(4844);

//len_list: 51
//==============================


//==============================
    submit.push(7654);
    ref.push(7654);

//len_list: 52
//==============================


//==============================
    submit.push(7333);
    ref.push(7333);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(3052);
    ref.push(3052);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9458);
    ref.push(9458);

//len_list: 52
//==============================


//==============================
    submit.push(4861);
    ref.push(4861);

//len_list: 53
//==============================


//==============================
    submit.push(9752);
    ref.push(9752);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(5057);
    ref.push(5057);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(799);
    ref.push(799);

//len_list: 55
//==============================


//==============================
    submit.push(3703);
    ref.push(3703);

//len_list: 56
//==============================


//==============================
    submit.push(8474);
    ref.push(8474);

//len_list: 57
//==============================


//==============================
    submit.push(7229);
    ref.push(7229);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(556);
    ref.push(556);

//len_list: 59
//==============================


//==============================
    submit.push(2029);
    ref.push(2029);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(3242);
    ref.push(3242);

//len_list: 59
//==============================


//==============================
    submit.push(6015);
    ref.push(6015);

//len_list: 60
//==============================


//==============================
    submit.push(8861);
    ref.push(8861);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(1783);
    ref.push(1783);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(2548);
    ref.push(2548);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(2268);
    ref.push(2268);

//len_list: 57
//==============================


//==============================
    submit.push(4247);
    ref.push(4247);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(6375);
    ref.push(6375);

//len_list: 59
//==============================


//==============================
    submit.push(1551);
    ref.push(1551);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(6409);
    ref.push(6409);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(7732);
    ref.push(7732);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(1569);
    ref.push(1569);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(943);
    ref.push(943);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(696);
    ref.push(696);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(66);
    ref.push(66);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(8305);
    ref.push(8305);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(4187);
    ref.push(4187);

//len_list: 59
//==============================


//==============================
    submit.push(5756);
    ref.push(5756);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(2987);
    ref.push(2987);

//len_list: 61
//==============================


//==============================
    submit.push(2860);
    ref.push(2860);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(2481);
    ref.push(2481);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(7152);
    ref.push(7152);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(9617);
    ref.push(9617);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


}
