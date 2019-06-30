
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (79,302)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5107);
    ref.push(5107);

//len_list: 1
//==============================


//==============================
    submit.push(9151);
    ref.push(9151);

//len_list: 2
//==============================


//==============================
    submit.push(3379);
    ref.push(3379);

//len_list: 3
//==============================


//==============================
    submit.push(7160);
    ref.push(7160);

//len_list: 4
//==============================


//==============================
    submit.push(6145);
    ref.push(6145);

//len_list: 5
//==============================


//==============================
    submit.push(1347);
    ref.push(1347);

//len_list: 6
//==============================


//==============================
    submit.push(4472);
    ref.push(4472);

//len_list: 7
//==============================


//==============================
    submit.push(5467);
    ref.push(5467);

//len_list: 8
//==============================


//==============================
    submit.push(5194);
    ref.push(5194);

//len_list: 9
//==============================


//==============================
    submit.push(3114);
    ref.push(3114);

//len_list: 10
//==============================


//==============================
    submit.push(2276);
    ref.push(2276);

//len_list: 11
//==============================


//==============================
    submit.push(3600);
    ref.push(3600);

//len_list: 12
//==============================


//==============================
    submit.push(6461);
    ref.push(6461);

//len_list: 13
//==============================


//==============================
    submit.push(6429);
    ref.push(6429);

//len_list: 14
//==============================


//==============================
    submit.push(7467);
    ref.push(7467);

//len_list: 15
//==============================


//==============================
    submit.push(7623);
    ref.push(7623);

//len_list: 16
//==============================


//==============================
    submit.push(415);
    ref.push(415);

//len_list: 17
//==============================


//==============================
    submit.push(707);
    ref.push(707);

//len_list: 18
//==============================


//==============================
    submit.push(2514);
    ref.push(2514);

//len_list: 19
//==============================


//==============================
    submit.push(9210);
    ref.push(9210);

//len_list: 20
//==============================


//==============================
    submit.push(8798);
    ref.push(8798);

//len_list: 21
//==============================


//==============================
    submit.push(97);
    ref.push(97);

//len_list: 22
//==============================


//==============================
    submit.push(6980);
    ref.push(6980);

//len_list: 23
//==============================


//==============================
    submit.push(9051);
    ref.push(9051);

//len_list: 24
//==============================


//==============================
    submit.push(5820);
    ref.push(5820);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(8752);
    ref.push(8752);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(399);
    ref.push(399);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(8480);
    ref.push(8480);

//len_list: 24
//==============================


//==============================
    submit.push(1830);
    ref.push(1830);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(4207);
    ref.push(4207);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(7064);
    ref.push(7064);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(7698);
    ref.push(7698);

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
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(7990);
    ref.push(7990);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(2893);
    ref.push(2893);

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
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(4071);
    ref.push(4071);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
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
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(632);
    ref.push(632);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
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
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(497);
    ref.push(497);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(2449);
    ref.push(2449);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(7598);
    ref.push(7598);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(3586);
    ref.push(3586);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(8531);
    ref.push(8531);

//len_list: 25
//==============================


//==============================
    submit.push(3325);
    ref.push(3325);

//len_list: 26
//==============================


//==============================
    submit.push(6449);
    ref.push(6449);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(844);
    ref.push(844);

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
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(6990);
    ref.push(6990);

//len_list: 27
//==============================


//==============================
    submit.push(5758);
    ref.push(5758);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(3120);
    ref.push(3120);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(563);
    ref.push(563);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(5771);
    ref.push(5771);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(3609);
    ref.push(3609);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(5864);
    ref.push(5864);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7623);
    ref.push(7623);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(3601);
    ref.push(3601);

//len_list: 33
//==============================


//==============================
    submit.push(1740);
    ref.push(1740);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(5394);
    ref.push(5394);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(6895);
    ref.push(6895);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(4315);
    ref.push(4315);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5504);
    ref.push(5504);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(7944);
    ref.push(7944);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5069);
    ref.push(5069);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(1396);
    ref.push(1396);

//len_list: 33
//==============================


//==============================
    submit.push(6987);
    ref.push(6987);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4345);
    ref.push(4345);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(8114);
    ref.push(8114);

//len_list: 31
//==============================


//==============================
    submit.push(5198);
    ref.push(5198);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(1399);
    ref.push(1399);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(8136);
    ref.push(8136);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(1068);
    ref.push(1068);

//len_list: 32
//==============================


//==============================
    submit.push(3877);
    ref.push(3877);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(8401);
    ref.push(8401);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5000);
    ref.push(5000);

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
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(4577);
    ref.push(4577);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(6954);
    ref.push(6954);

//len_list: 31
//==============================


//==============================
    submit.push(4766);
    ref.push(4766);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(4919);
    ref.push(4919);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(2483);
    ref.push(2483);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(6988);
    ref.push(6988);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(5226);
    ref.push(5226);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(9462);
    ref.push(9462);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(9421);
    ref.push(9421);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(2893);
    ref.push(2893);

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
//num_require: 93
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7653);
    ref.push(7653);

//len_list: 32
//==============================


//==============================
    submit.push(9108);
    ref.push(9108);

//len_list: 33
//==============================


//==============================
    submit.push(4958);
    ref.push(4958);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(1172);
    ref.push(1172);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(9184);
    ref.push(9184);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(9771);
    ref.push(9771);

//len_list: 33
//==============================


//==============================
    submit.push(9378);
    ref.push(9378);

//len_list: 34
//==============================


//==============================
    submit.push(8737);
    ref.push(8737);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(3722);
    ref.push(3722);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(814);
    ref.push(814);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(3990);
    ref.push(3990);

//len_list: 38
//==============================


//==============================
    submit.push(1026);
    ref.push(1026);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(1993);
    ref.push(1993);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(2045);
    ref.push(2045);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(9431);
    ref.push(9431);

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
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.push(7722);
    ref.push(7722);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(9847);
    ref.push(9847);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(684);
    ref.push(684);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(3789);
    ref.push(3789);

//len_list: 33
//==============================


}
