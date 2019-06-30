
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (67,421)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(377);
    ref.push(377);

//len_list: 1
//==============================


//==============================
    submit.push(3286);
    ref.push(3286);

//len_list: 2
//==============================


//==============================
    submit.push(2179);
    ref.push(2179);

//len_list: 3
//==============================


//==============================
    submit.push(1798);
    ref.push(1798);

//len_list: 4
//==============================


//==============================
    submit.push(4614);
    ref.push(4614);

//len_list: 5
//==============================


//==============================
    submit.push(551);
    ref.push(551);

//len_list: 6
//==============================


//==============================
    submit.push(4476);
    ref.push(4476);

//len_list: 7
//==============================


//==============================
    submit.push(2560);
    ref.push(2560);

//len_list: 8
//==============================


//==============================
    submit.push(5120);
    ref.push(5120);

//len_list: 9
//==============================


//==============================
    submit.push(1107);
    ref.push(1107);

//len_list: 10
//==============================


//==============================
    submit.push(9458);
    ref.push(9458);

//len_list: 11
//==============================


//==============================
    submit.push(4508);
    ref.push(4508);

//len_list: 12
//==============================


//==============================
    submit.push(1514);
    ref.push(1514);

//len_list: 13
//==============================


//==============================
    submit.push(7614);
    ref.push(7614);

//len_list: 14
//==============================


//==============================
    submit.push(7297);
    ref.push(7297);

//len_list: 15
//==============================


//==============================
    submit.push(5771);
    ref.push(5771);

//len_list: 16
//==============================


//==============================
    submit.push(3920);
    ref.push(3920);

//len_list: 17
//==============================


//==============================
    submit.push(226);
    ref.push(226);

//len_list: 18
//==============================


//==============================
    submit.push(2481);
    ref.push(2481);

//len_list: 19
//==============================


//==============================
    submit.push(6632);
    ref.push(6632);

//len_list: 20
//==============================


//==============================
    submit.push(7418);
    ref.push(7418);

//len_list: 21
//==============================


//==============================
    submit.push(3716);
    ref.push(3716);

//len_list: 22
//==============================


//==============================
    submit.push(721);
    ref.push(721);

//len_list: 23
//==============================


//==============================
    submit.push(2741);
    ref.push(2741);

//len_list: 24
//==============================


//==============================
    submit.push(7009);
    ref.push(7009);

//len_list: 25
//==============================


//==============================
    submit.push(4413);
    ref.push(4413);

//len_list: 26
//==============================


//==============================
    submit.push(5680);
    ref.push(5680);

//len_list: 27
//==============================


//==============================
    submit.push(4061);
    ref.push(4061);

//len_list: 28
//==============================


//==============================
    submit.push(8149);
    ref.push(8149);

//len_list: 29
//==============================


//==============================
    submit.push(2878);
    ref.push(2878);

//len_list: 30
//==============================


//==============================
    submit.push(3239);
    ref.push(3239);

//len_list: 31
//==============================


//==============================
    submit.push(935);
    ref.push(935);

//len_list: 32
//==============================


//==============================
    submit.push(3343);
    ref.push(3343);

//len_list: 33
//==============================


//==============================
    submit.push(7515);
    ref.push(7515);

//len_list: 34
//==============================


//==============================
    submit.push(1648);
    ref.push(1648);

//len_list: 35
//==============================


//==============================
    submit.push(6480);
    ref.push(6480);

//len_list: 36
//==============================


//==============================
    submit.push(3146);
    ref.push(3146);

//len_list: 37
//==============================


//==============================
    submit.push(4139);
    ref.push(4139);

//len_list: 38
//==============================


//==============================
    submit.push(4991);
    ref.push(4991);

//len_list: 39
//==============================


//==============================
    submit.push(9059);
    ref.push(9059);

//len_list: 40
//==============================


//==============================
    submit.push(7593);
    ref.push(7593);

//len_list: 41
//==============================


//==============================
    submit.push(7120);
    ref.push(7120);

//len_list: 42
//==============================


//==============================
    submit.push(4077);
    ref.push(4077);

//len_list: 43
//==============================


//==============================
    submit.push(6854);
    ref.push(6854);

//len_list: 44
//==============================


//==============================
    submit.push(4118);
    ref.push(4118);

//len_list: 45
//==============================


//==============================
    submit.push(4440);
    ref.push(4440);

//len_list: 46
//==============================


//==============================
    submit.push(6259);
    ref.push(6259);

//len_list: 47
//==============================


//==============================
    submit.push(2518);
    ref.push(2518);

//len_list: 48
//==============================


//==============================
    submit.push(2616);
    ref.push(2616);

//len_list: 49
//==============================


//==============================
    submit.push(1325);
    ref.push(1325);

//len_list: 50
//==============================


//==============================
    submit.push(7452);
    ref.push(7452);

//len_list: 51
//==============================


//==============================
    submit.push(3810);
    ref.push(3810);

//len_list: 52
//==============================


//==============================
    submit.push(6481);
    ref.push(6481);

//len_list: 53
//==============================


//==============================
    submit.push(7449);
    ref.push(7449);

//len_list: 54
//==============================


//==============================
    submit.push(2504);
    ref.push(2504);

//len_list: 55
//==============================


//==============================
    submit.push(6356);
    ref.push(6356);

//len_list: 56
//==============================


//==============================
    submit.push(3747);
    ref.push(3747);

//len_list: 57
//==============================


//==============================
    submit.push(6411);
    ref.push(6411);

//len_list: 58
//==============================


//==============================
    submit.push(9594);
    ref.push(9594);

//len_list: 59
//==============================


//==============================
    submit.push(4450);
    ref.push(4450);

//len_list: 60
//==============================


//==============================
    submit.push(2157);
    ref.push(2157);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(9031);
    ref.push(9031);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(2687);
    ref.push(2687);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(8814);
    ref.push(8814);

//len_list: 61
//==============================


//==============================
    submit.push(2232);
    ref.push(2232);

//len_list: 62
//==============================


//==============================
    submit.push(6129);
    ref.push(6129);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(5901);
    ref.push(5901);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(6475);
    ref.push(6475);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(3367);
    ref.push(3367);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(9345);
    ref.push(9345);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(2007);
    ref.push(2007);

//len_list: 65
//==============================


//==============================
    submit.push(2689);
    ref.push(2689);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(9672);
    ref.push(9672);

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(9652);
    ref.push(9652);

//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(3803);
    ref.push(3803);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(1587);
    ref.push(1587);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(738);
    ref.push(738);

//len_list: 61
//==============================


//==============================
    submit.push(5360);
    ref.push(5360);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(1824);
    ref.push(1824);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(256);
    ref.push(256);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(6871);
    ref.push(6871);

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
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(1761);
    ref.push(1761);

//len_list: 61
//==============================


//==============================
    submit.push(3354);
    ref.push(3354);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(5560);
    ref.push(5560);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(2778);
    ref.push(2778);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(4870);
    ref.push(4870);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(6217);
    ref.push(6217);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(3256);
    ref.push(3256);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(3315);
    ref.push(3315);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(945);
    ref.push(945);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(2142);
    ref.push(2142);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(5766);
    ref.push(5766);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(7325);
    ref.push(7325);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(9586);
    ref.push(9586);

//len_list: 61
//==============================


//==============================
    submit.push(4198);
    ref.push(4198);

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
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(6570);
    ref.push(6570);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(6398);
    ref.push(6398);

//len_list: 61
//==============================


//==============================
    submit.push(7954);
    ref.push(7954);

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
    submit.push(1973);
    ref.push(1973);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(7253);
    ref.push(7253);

//len_list: 61
//==============================


//==============================
    submit.push(4029);
    ref.push(4029);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(5009);
    ref.push(5009);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(9376);
    ref.push(9376);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(9956);
    ref.push(9956);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(6698);
    ref.push(6698);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(3675);
    ref.push(3675);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(8394);
    ref.push(8394);

//len_list: 62
//==============================


//==============================
    submit.push(4170);
    ref.push(4170);

//len_list: 63
//==============================


//==============================
    submit.push(7870);
    ref.push(7870);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(1227);
    ref.push(1227);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(9266);
    ref.push(9266);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(6954);
    ref.push(6954);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(9727);
    ref.push(9727);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.push(7347);
    ref.push(7347);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(3097);
    ref.push(3097);

//len_list: 67
//==============================


//==============================
    submit.push(9083);
    ref.push(9083);

//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.push(1001);
    ref.push(1001);

//len_list: 68
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.push(2224);
    ref.push(2224);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.push(7832);
    ref.push(7832);

//len_list: 68
//==============================


//==============================
    submit.push(8279);
    ref.push(8279);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.push(132);
    ref.push(132);

//len_list: 69
//==============================


//==============================
    submit.push(8628);
    ref.push(8628);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(3405);
    ref.push(3405);

//len_list: 70
//==============================


//==============================
    submit.push(7408);
    ref.push(7408);

//len_list: 71
//==============================


//==============================
    submit.push(42);
    ref.push(42);

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(8353);
    ref.push(8353);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(8071);
    ref.push(8071);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
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
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(7427);
    ref.push(7427);

//len_list: 71
//==============================


//==============================
    submit.push(1840);
    ref.push(1840);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(9355);
    ref.push(9355);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(2599);
    ref.push(2599);

//len_list: 73
//==============================


//==============================
    submit.push(293);
    ref.push(293);

//len_list: 74
//==============================


//==============================
    submit.push(8724);
    ref.push(8724);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(4992);
    ref.push(4992);

//len_list: 76
//==============================


//==============================
    submit.push(3221);
    ref.push(3221);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(3167);
    ref.push(3167);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(7682);
    ref.push(7682);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(1439);
    ref.push(1439);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(1148);
    ref.push(1148);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(9977);
    ref.push(9977);

//len_list: 81
//==============================


//==============================
    submit.push(4344);
    ref.push(4344);

//len_list: 82
//==============================


//==============================
    submit.push(2278);
    ref.push(2278);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5646);
    ref.push(5646);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6340);
    ref.push(6340);

//len_list: 85
//==============================


//==============================
    submit.push(3751);
    ref.push(3751);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(8210);
    ref.push(8210);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(2125);
    ref.push(2125);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(4540);
    ref.push(4540);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(610);
    ref.push(610);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9139);
    ref.push(9139);

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
    submit.push(9746);
    ref.push(9746);

//len_list: 86
//==============================


//==============================
    submit.push(8022);
    ref.push(8022);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(6091);
    ref.push(6091);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(3689);
    ref.push(3689);

//len_list: 88
//==============================


//==============================
    submit.push(6060);
    ref.push(6060);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(1755);
    ref.push(1755);

//len_list: 90
//==============================


//==============================
    submit.push(5418);
    ref.push(5418);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.push(343);
    ref.push(343);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
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
    submit.push(727);
    ref.push(727);

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
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
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
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1131);
    ref.push(1131);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(6292);
    ref.push(6292);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(524);
    ref.push(524);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(9498);
    ref.push(9498);

//len_list: 87
//==============================


//==============================
    submit.push(7265);
    ref.push(7265);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(4850);
    ref.push(4850);

//len_list: 89
//==============================


//==============================
    submit.push(972);
    ref.push(972);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(616);
    ref.push(616);

//len_list: 91
//==============================


//==============================
    submit.push(7519);
    ref.push(7519);

//len_list: 92
//==============================


//==============================
    submit.push(541);
    ref.push(541);

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
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(8725);
    ref.push(8725);

//len_list: 91
//==============================


//==============================
    submit.push(2103);
    ref.push(2103);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9705);
    ref.push(9705);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


}
